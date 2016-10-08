.class final Lcom/xueqiu/android/common/search/USearchActivity$11;
.super Ljava/lang/Object;
.source "USearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/search/USearchActivity;->b(Ljava/util/List;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/User;

.field final synthetic b:Lcom/xueqiu/android/common/search/USearchActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/search/USearchActivity;Lcom/xueqiu/android/community/model/User;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/xueqiu/android/common/search/USearchActivity$11;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    iput-object p2, p0, Lcom/xueqiu/android/common/search/USearchActivity$11;->a:Lcom/xueqiu/android/community/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 441
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$11;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/search/USearchActivity;->k()Ljava/lang/String;

    move-result-object v0

    .line 1197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 441
    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$11;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/USearchActivity;->k(Lcom/xueqiu/android/common/search/USearchActivity;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/search/b/a;

    iget-object v1, p0, Lcom/xueqiu/android/common/search/USearchActivity$11;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/search/USearchActivity;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/search/b/a;->b(Ljava/lang/String;)V

    .line 444
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/common/search/USearchActivity$11;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    const-class v2, Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 445
    const-string v1, "extra_user"

    iget-object v2, p0, Lcom/xueqiu/android/common/search/USearchActivity$11;->a:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 446
    iget-object v1, p0, Lcom/xueqiu/android/common/search/USearchActivity$11;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/search/USearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 447
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$11;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/USearchActivity;->l(Lcom/xueqiu/android/common/search/USearchActivity;)Lcom/xueqiu/android/common/model/SNBEvent;

    move-result-object v0

    const-string v1, "key"

    iget-object v2, p0, Lcom/xueqiu/android/common/search/USearchActivity$11;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-virtual {v2}, Lcom/xueqiu/android/common/search/USearchActivity;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$11;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/USearchActivity;->l(Lcom/xueqiu/android/common/search/USearchActivity;)Lcom/xueqiu/android/common/model/SNBEvent;

    move-result-object v0

    const-string v1, "click_area"

    const-string v2, "\u7528\u6237"

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$11;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/USearchActivity;->l(Lcom/xueqiu/android/common/search/USearchActivity;)Lcom/xueqiu/android/common/model/SNBEvent;

    move-result-object v0

    const-string v1, "click_symbol"

    iget-object v2, p0, Lcom/xueqiu/android/common/search/USearchActivity$11;->a:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 450
    iget-object v1, p0, Lcom/xueqiu/android/common/search/USearchActivity$11;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/search/USearchActivity;->l(Lcom/xueqiu/android/common/search/USearchActivity;)Lcom/xueqiu/android/common/model/SNBEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 451
    return-void
.end method
