module GoobsHelper
	def goob_params
		params.require(:description).permit(:image)
	end
end
