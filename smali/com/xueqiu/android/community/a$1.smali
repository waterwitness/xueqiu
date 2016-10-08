.class final Lcom/xueqiu/android/community/a$1;
.super Ljava/lang/Object;
.source "CommentListItemClickListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/a;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xueqiu/android/community/model/Comment;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Landroid/view/View;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Lcom/xueqiu/android/community/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a;Ljava/util/List;Ljava/lang/String;Lcom/xueqiu/android/community/model/Comment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/xueqiu/android/community/a$1;->l:Lcom/xueqiu/android/community/a;

    iput-object p2, p0, Lcom/xueqiu/android/community/a$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/xueqiu/android/community/a$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/xueqiu/android/community/a$1;->c:Lcom/xueqiu/android/community/model/Comment;

    iput-object p5, p0, Lcom/xueqiu/android/community/a$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/xueqiu/android/community/a$1;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/xueqiu/android/community/a$1;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/xueqiu/android/community/a$1;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/xueqiu/android/community/a$1;->h:Ljava/lang/String;

    iput-object p10, p0, Lcom/xueqiu/android/community/a$1;->i:Ljava/lang/String;

    iput-object p11, p0, Lcom/xueqiu/android/community/a$1;->j:Landroid/view/View;

    iput-object p12, p0, Lcom/xueqiu/android/community/a$1;->k:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 165
    iget-object v0, p0, Lcom/xueqiu/android/community/a$1;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    iget-object v1, p0, Lcom/xueqiu/android/community/a$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    iget-object v0, p0, Lcom/xueqiu/android/community/a$1;->l:Lcom/xueqiu/android/community/a;

    iget-object v1, p0, Lcom/xueqiu/android/community/a$1;->c:Lcom/xueqiu/android/community/model/Comment;

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/a;->a(Lcom/xueqiu/android/community/a;Lcom/xueqiu/android/community/model/Comment;)V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/community/a$1;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    iget-object v0, p0, Lcom/xueqiu/android/community/a$1;->l:Lcom/xueqiu/android/community/a;

    iget-object v1, p0, Lcom/xueqiu/android/community/a$1;->c:Lcom/xueqiu/android/community/model/Comment;

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/a;->b(Lcom/xueqiu/android/community/a;Lcom/xueqiu/android/community/model/Comment;)V

    goto :goto_0

    .line 173
    :cond_2
    iget-object v1, p0, Lcom/xueqiu/android/community/a$1;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 175
    iget-object v0, p0, Lcom/xueqiu/android/community/a$1;->l:Lcom/xueqiu/android/community/a;

    iget-object v1, p0, Lcom/xueqiu/android/community/a$1;->c:Lcom/xueqiu/android/community/model/Comment;

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/a;->c(Lcom/xueqiu/android/community/a;Lcom/xueqiu/android/community/model/Comment;)V

    goto :goto_0

    .line 177
    :cond_3
    iget-object v1, p0, Lcom/xueqiu/android/community/a$1;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 178
    iget-object v0, p0, Lcom/xueqiu/android/community/a$1;->l:Lcom/xueqiu/android/community/a;

    iget-object v1, p0, Lcom/xueqiu/android/community/a$1;->c:Lcom/xueqiu/android/community/model/Comment;

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/a;->d(Lcom/xueqiu/android/community/a;Lcom/xueqiu/android/community/model/Comment;)V

    goto :goto_0

    .line 179
    :cond_4
    iget-object v1, p0, Lcom/xueqiu/android/community/a$1;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 181
    iget-object v0, p0, Lcom/xueqiu/android/community/a$1;->l:Lcom/xueqiu/android/community/a;

    iget-object v1, p0, Lcom/xueqiu/android/community/a$1;->c:Lcom/xueqiu/android/community/model/Comment;

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/a;->e(Lcom/xueqiu/android/community/a;Lcom/xueqiu/android/community/model/Comment;)V

    goto :goto_0

    .line 183
    :cond_5
    iget-object v1, p0, Lcom/xueqiu/android/community/a$1;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 185
    iget-object v0, p0, Lcom/xueqiu/android/community/a$1;->l:Lcom/xueqiu/android/community/a;

    iget-object v1, p0, Lcom/xueqiu/android/community/a$1;->c:Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Comment;->getId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/community/a;->a(Lcom/xueqiu/android/community/a;J)V

    goto :goto_0

    .line 187
    :cond_6
    iget-object v1, p0, Lcom/xueqiu/android/community/a$1;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xueqiu/android/community/a$1;->c:Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/xueqiu/android/community/a$1;->c:Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Comment;->getReplyScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 195
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/community/a$1;->j:Landroid/view/View;

    const v2, 0x7f0e0201

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    iget-object v2, p0, Lcom/xueqiu/android/community/a$1;->l:Lcom/xueqiu/android/community/a;

    invoke-static {v2}, Lcom/xueqiu/android/community/a;->a(Lcom/xueqiu/android/community/a;)Lcom/xueqiu/android/common/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xueqiu/android/base/util/e;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 197
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_0

    .line 192
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 199
    :cond_8
    iget-object v1, p0, Lcom/xueqiu/android/community/a$1;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/xueqiu/android/community/a$1;->l:Lcom/xueqiu/android/community/a;

    iget-object v1, p0, Lcom/xueqiu/android/community/a$1;->c:Lcom/xueqiu/android/community/model/Comment;

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/a;->f(Lcom/xueqiu/android/community/a;Lcom/xueqiu/android/community/model/Comment;)V

    goto/16 :goto_0
.end method
