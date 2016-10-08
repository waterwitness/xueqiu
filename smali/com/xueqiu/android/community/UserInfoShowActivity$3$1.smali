.class final Lcom/xueqiu/android/community/UserInfoShowActivity$3$1;
.super Ljava/lang/Object;
.source "UserInfoShowActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/UserInfoShowActivity$3;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/community/UserInfoShowActivity$3;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UserInfoShowActivity$3;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/xueqiu/android/community/UserInfoShowActivity$3$1;->b:Lcom/xueqiu/android/community/UserInfoShowActivity$3;

    iput-object p2, p0, Lcom/xueqiu/android/community/UserInfoShowActivity$3$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 176
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/community/UserInfoShowActivity$3$1;->b:Lcom/xueqiu/android/community/UserInfoShowActivity$3;

    iget-object v1, v1, Lcom/xueqiu/android/community/UserInfoShowActivity$3;->a:Lcom/xueqiu/android/community/UserInfoShowActivity;

    const-class v2, Lcom/xueqiu/android/common/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    const-string v1, "extra_url_path"

    iget-object v2, p0, Lcom/xueqiu/android/community/UserInfoShowActivity$3$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v1, "extra_title"

    iget-object v2, p0, Lcom/xueqiu/android/community/UserInfoShowActivity$3$1;->b:Lcom/xueqiu/android/community/UserInfoShowActivity$3;

    iget-object v2, v2, Lcom/xueqiu/android/community/UserInfoShowActivity$3;->a:Lcom/xueqiu/android/community/UserInfoShowActivity;

    const v3, 0x7f070576

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/xueqiu/android/community/UserInfoShowActivity$3$1;->b:Lcom/xueqiu/android/community/UserInfoShowActivity$3;

    iget-object v6, v6, Lcom/xueqiu/android/community/UserInfoShowActivity$3;->a:Lcom/xueqiu/android/community/UserInfoShowActivity;

    invoke-static {v6}, Lcom/xueqiu/android/community/UserInfoShowActivity;->a(Lcom/xueqiu/android/community/UserInfoShowActivity;)Lcom/xueqiu/android/community/model/User;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/xueqiu/android/community/UserInfoShowActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    iget-object v1, p0, Lcom/xueqiu/android/community/UserInfoShowActivity$3$1;->b:Lcom/xueqiu/android/community/UserInfoShowActivity$3;

    iget-object v1, v1, Lcom/xueqiu/android/community/UserInfoShowActivity$3;->a:Lcom/xueqiu/android/community/UserInfoShowActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/UserInfoShowActivity;->startActivity(Landroid/content/Intent;)V

    .line 180
    return-void
.end method
