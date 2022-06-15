class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :body

      t.timestamps
    end
    
    if @book.save
　redirect_to group_messages_path(@group), notice: '投稿しました'
else
flash.now[:alert] = 'メッセージを入力してください。'
　render :index
end

  end
end
