.class final Lcom/xueqiu/android/community/a/a$3;
.super Ljava/lang/Object;
.source "CommentListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/a/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/Comment;

.field final synthetic b:Lcom/xueqiu/android/community/a/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/a;Lcom/xueqiu/android/community/model/Comment;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/xueqiu/android/community/a/a$3;->b:Lcom/xueqiu/android/community/a/a;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/a$3;->a:Lcom/xueqiu/android/community/model/Comment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 298
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 299
    iget-object v1, p0, Lcom/xueqiu/android/community/a/a$3;->b:Lcom/xueqiu/android/community/a/a;

    .line 1089
    iget-object v1, v1, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 299
    const-class v2, Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 300
    const-string v1, "extra_user"

    iget-object v2, p0, Lcom/xueqiu/android/community/a/a$3;->a:Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 301
    iget-object v1, p0, Lcom/xueqiu/android/community/a/a$3;->b:Lcom/xueqiu/android/community/a/a;

    .line 2089
    iget-object v1, v1, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 301
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 302
    return-void
.end method
