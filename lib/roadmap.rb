module Roadmap
	def get_roadmap(roadmap_id)
 		response = self.class.get(api_url("roadmaps/#{roadmap_id}"), headers: { "authorization" => @auth_token })
 		@roadmap = JSON.parse(response.body)
 	end

  def get_checkpoint(checkpoint_id)
    response = self.class.get(api_url("checkpoints/#{checkpoint_id}"), headers: { "authorization" => @auth_token })
    @checkpoint = JSON.parse(response.body)
  end

  def create_submission(checkpoint_id, enrollment_id, assignment_branch, assignment_commit_link, comment)
    response = self.class.post(api_url("checkpoint_submissions"), body: { "checkpoint_id": checkpoint_id, "enrollment_id": enrollment_id, "assignment_branch": assignment_branch, "assignment_commit_link": assignment_commit_link, "comment": comment }, headers: { "authorization" => @auth_token })
    puts response
  end
end



    