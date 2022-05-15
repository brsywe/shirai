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
      "球審の白井です。メッセンジャー投手を暴言で退場といたします",
      "何だお前（半ギレ）",
      "英語で言われたので、何を言われたのか考えて理解しながら、これは暴言だなと判断した。私も英語は堪能ではないので"
    
    ]
    opt.messages.each do |message|
      to_name = message.user.idname
      msg = "@#{to_name} #{shirai.sample}"
      message.post(message: msg)
    end
  end
end
