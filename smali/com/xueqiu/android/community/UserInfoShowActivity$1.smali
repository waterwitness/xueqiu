.class final Lcom/xueqiu/android/community/UserInfoShowActivity$1;
.super Ljava/lang/Object;
.source "UserInfoShowActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/UserInfoShowActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/UserInfoShowActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UserInfoShowActivity;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/xueqiu/android/community/UserInfoShowActivity$1;->a:Lcom/xueqiu/android/community/UserInfoShowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/community/UserInfoShowActivity$1;->a:Lcom/xueqiu/android/community/UserInfoShowActivity;

    const-class v2, Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 64
    const-string v2, "user"

    iget-object v3, p0, Lcom/xueqiu/android/community/UserInfoShowActivity$1;->a:Lcom/xueqiu/android/community/UserInfoShowActivity;

    invoke-static {v3}, Lcom/xueqiu/android/community/UserInfoShowActivity;->a(Lcom/xueqiu/android/community/UserInfoShowActivity;)Lcom/xueqiu/android/community/model/User;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 66
    iget-object v1, p0, Lcom/xueqiu/android/community/UserInfoShowActivity$1;->a:Lcom/xueqiu/android/community/UserInfoShowActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/UserInfoShowActivity;->startActivity(Landroid/content/Intent;)V

    .line 67
    return-void
.end method
