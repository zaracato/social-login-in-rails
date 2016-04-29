<% module_namespacing do -%>
class <%= class_name %> < <%= parent_class_name.classify %>
<% attributes.select(&:reference?).each do |attribute| -%>
  belongs_to :<%= attribute.name %><%= ', polymorphic: true' if attribute.polymorphic? %>
<% end -%>
<% if attributes.any?(&:password_digest?) -%>
  has_secure_password
<% end -%>

  def to_s
    <%- if attributes.map{ |a| a.name }.include?('name') -%>
    name
    <%- else -%>
    "<%= class_name %> #{id}"
    <%- end -%>
  end

<% end -%>
end
