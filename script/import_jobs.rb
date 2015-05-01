require 'rubygems'
require 'bundler/setup'

store = $page.store
# validation doesn't work
company = store._companies.buffer({
  name: SecureRandom.hex,
  url: SecureRandom.hex,
  desc: SecureRandom.hex
})
company.save!

require 'securerandom'

0.upto(200) do |i|
  job = store._jobs.buffer({
    company_id: company._id,
    open: true,
    title: SecureRandom.hex,
    url: SecureRandom.hex,
    job_type: SecureRandom.hex,
    descriptions: SecureRandom.hex,
    responsibilities: SecureRandom.hex,
    requirements: SecureRandom.hex,
    # volt doesn't support embedded document yet
    raw: {
      url: SecureRandom.hex
    }
  })

  job.save!
end
