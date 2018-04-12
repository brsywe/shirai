# -*- coding: utf-8 -*-

Plugin.create(:shirai) do

  command(
    :shirai,
    name: '球審の白井です',
    condition: -> _ { true },
    visible: true,
    role: :timeline
  ) do |opt|
    shirai = [
      "えー、球審の白井です（半ギレ）.",
      "ｱｱｱｱｯｲｯ!!!",
      "ｱｱｱｱｱｱｯｯｯｲｲｲｯｯ!!!",
      "侮辱行為で、退場といたします",
      "何を言ってんですか（半ギレ）",
      "そうですね（半ギレ）",
      "ｷｪｪｪｲｲｲｯｯ!!! ",
      "球審の白井です。メッセンジャー投手を暴言で退場といたします"
    
    ]
    opt.messages.each do |message|
      to_name = message.user.idname
      msg = "@#{to_name} #{shirai.sample}"
      Service.primary.post(:message => msg, :replyto => message)
    end
  end
end
