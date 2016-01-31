#留言管理
class Message#添加新的留言

  def initialize(id,author,content)
    @id = id
    @author = author
    @content = content
    @created_at = Time.new
  end

  attr_accessor :id,:author,:content,:created_at

  def author
    if author.str.length < 1
      p "作者名不能为空"
    end
  end

  def content
    if content.str.length < 10
      p "内容不能少于十字"
    end
  end

end

###################################################


class Management << Message#留言功能
  def initialize
    @Mes_array = Array.new
  end

  def add_Mes(id,author,content)
    new_Mes << Message.new(@id += 1,author,content,Time.new.strftime("%Y").to_i)
    @Mes_array.push(new_Mes)
  end

  def delete_Mes(id)
    @Mes_array.delete_if{|x| x.id == id}
  end

  def search_by_id(input_id)
      if  @Mes_array[i].id == input_id
        return @Mes_array[i]
      else
        return nil
  end

  def search_by_author(input_author)
    result = Array.new
    if @Mes_array[i].author.to_s == input_author.to_s
      return result.push(@Mes_array[i])
    else
      nil
  end

end
