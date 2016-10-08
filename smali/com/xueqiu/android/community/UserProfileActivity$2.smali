.class final Lcom/xueqiu/android/community/UserProfileActivity$2;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/UserProfileActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UserProfileActivity;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/xueqiu/android/community/UserProfileActivity$2;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 376
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 396
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 378
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity$2;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    const-class v2, Lcom/xueqiu/android/community/UserInfoShowActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 379
    const-string v1, "extra_user"

    iget-object v2, p0, Lcom/xueqiu/android/community/UserProfileActivity$2;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/UserProfileActivity;->d(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 380
    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity$2;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 383
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$2;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity$2;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserProfileActivity;->d(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/base/util/l;->a(Lcom/xueqiu/android/common/b;J)V

    goto :goto_0

    .line 386
    :pswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$2;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserProfileActivity;->n(Lcom/xueqiu/android/community/UserProfileActivity;)V

    goto :goto_0

    .line 389
    :pswitch_3
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$2;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserProfileActivity;->o(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/d/e;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/d/e;->f()V

    goto :goto_0

    .line 392
    :pswitch_4
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$2;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity$2;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserProfileActivity;->d(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/community/UserProfileActivity;->a(Lcom/xueqiu/android/community/UserProfileActivity;J)V

    goto :goto_0

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e078b
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
