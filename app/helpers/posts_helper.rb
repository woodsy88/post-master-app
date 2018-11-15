module PostsHelper

    # def markdownify(content)
    #   pipeline_context = { gmf: true }
    #   pipeline = HTML::Pipeline.new [
    #     HTML::Pipeline::MarkdownFilter,
    #   ], pipeline_context
    #   pipeline.call(content)[:output].to_s
    # end


    def linked_users(body)
        body.gsub /@([\w]+)/ do |match|
            link_to match, user_path($1)
        end.html_safe
    end


end
