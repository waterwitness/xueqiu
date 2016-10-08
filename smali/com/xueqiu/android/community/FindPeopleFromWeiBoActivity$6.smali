.class final Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity$6;
.super Lrx/i;
.source "FindPeopleFromWeiBoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<",
        "Lcom/xueqiu/android/common/model/OAuthBindResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity$6;->a:Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 497
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 493
    check-cast p1, Lcom/xueqiu/android/common/model/OAuthBindResult;

    .line 1506
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/OAuthBindResult;->getExpiresIn()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1507
    const-string v0, "\u7ed1\u5b9a\u6210\u529f"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 1509
    iget-object v0, p0, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity$6;->a:Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;

    const v1, 0x7f0e01d7

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1510
    iget-object v0, p0, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity$6;->a:Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;

    const v1, 0x7f0e01f3

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1512
    iget-object v0, p0, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity$6;->a:Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;

    const v1, 0x7f0e0176

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 1513
    iget-object v1, p0, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity$6;->a:Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->c(Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;)[Landroid/support/v4/a/i;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1514
    iget-object v1, p0, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity$6;->a:Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->c(Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;)[Landroid/support/v4/a/i;

    move-result-object v1

    aget-object v0, v1, v0

    check-cast v0, Lcom/xueqiu/android/community/f;

    .line 2340
    iget-object v1, v0, Lcom/xueqiu/android/community/f;->b:Lcom/xueqiu/android/common/r;

    if-eqz v1, :cond_0

    .line 2341
    iget-object v0, v0, Lcom/xueqiu/android/community/f;->b:Lcom/xueqiu/android/common/r;

    .line 3225
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Z)V

    .line 1516
    :cond_0
    :goto_0
    return-void

    .line 1517
    :cond_1
    const-string v0, "\u7ed1\u5b9a\u5931\u8d25"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 501
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 502
    return-void
.end method
