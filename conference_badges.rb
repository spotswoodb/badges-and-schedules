def badge_maker(name)
    return "Hello, my name is #{name}."
  end

speaker_list = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

def batch_badge_creator(speaker_list)
    badges = []
    speaker_list.each {|name| badges << badge_maker(name)} 
    badges
end

def assign_rooms(speaker_list)
    room_number = []
    speaker_list.each_with_index {|name, index| room_number << "Hello, #{name}! You'll be assigned to room #{index + 1}!"}
    room_number
    end

# def printer(batch_badge_creator, assign_rooms)
#     new_badges = []
#     batch_badge_creator.each {|new_guest| new_badges << batch_badge_creator(new_guest)}
#     assign_rooms.each {|room_assignment| new_badges << assign_rooms(room_a)} 
# end

def printer(attendees)
    print_badge = batch_badge_creator(attendees)
    print_badge.each do |x| puts x
    end
    print_room = assign_rooms(attendees)
    print_room.each do |x| puts x
    end
end