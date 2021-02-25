class Doctor < ApplicationRecord
    has_many :appointments
    has_many :patients, through: :appointments
end
# this comment being typed
# into a keyboard into
# galaxy s7 running
# vim inside termux!
