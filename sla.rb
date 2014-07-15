def valid_policy?(number)
  hasExpectedPrefix = policy_number[0,5] == "POLIC";
  hasLengthOf12 = policy_number.size == 12;

  hasExpectedPrefix && hasLengthOf12
end

class PageRenderer
  def render
    include_header
    @body = @body + "\n"
    include_body
    @body = @body + "\n"
    include_footer
  end
end
