.class final Lcom/xueqiu/android/community/d$3;
.super Lrx/i;
.source "FindPeopleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/d;
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
.field final synthetic a:Lcom/xueqiu/android/community/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/d;)V
    .locals 0

    .prologue
    .line 600
    iput-object p1, p0, Lcom/xueqiu/android/community/d$3;->a:Lcom/xueqiu/android/community/d;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 604
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 600
    check-cast p1, Lcom/xueqiu/android/common/model/OAuthBindResult;

    .line 1613
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/OAuthBindResult;->getExpiresIn()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1614
    const-string v0, "\u7ed1\u5b9a\u6210\u529f"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 1616
    iget-object v0, p0, Lcom/xueqiu/android/community/d$3;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/d;->m(Lcom/xueqiu/android/community/d;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1617
    iget-object v0, p0, Lcom/xueqiu/android/community/d$3;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/d;->n(Lcom/xueqiu/android/community/d;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1619
    iget-object v0, p0, Lcom/xueqiu/android/community/d$3;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/d;->o(Lcom/xueqiu/android/community/d;)V

    :goto_0
    return-void

    .line 1621
    :cond_0
    const-string v0, "\u7ed1\u5b9a\u5931\u8d25"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 608
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 609
    return-void
.end method
