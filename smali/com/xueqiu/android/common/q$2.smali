.class final Lcom/xueqiu/android/common/q$2;
.super Lcom/xueqiu/android/base/b/p;
.source "SNBLinkJumpHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/q;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/cube/model/Cube;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 704
    iput-object p1, p0, Lcom/xueqiu/android/common/q$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/xueqiu/android/common/q$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 707
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 708
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 9

    .prologue
    const/4 v3, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 704
    check-cast p1, Lcom/xueqiu/android/cube/model/Cube;

    .line 1712
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/xueqiu/android/common/q$2;->a:Landroid/content/Context;

    const-class v1, Lcom/xueqiu/android/cube/H5ShareActivity;

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1713
    const-string v0, "extra_url"

    iget-object v1, p0, Lcom/xueqiu/android/common/q$2;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1714
    const-string v0, "extra_is_module"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 2077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v0

    .line 1717
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getOwnerId()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 1718
    const-string v0, "\u6211\u7684\u96ea\u7403\u7ec4\u5408$%s(%s)$\u6708\u62a5\u51fa\u7089\uff0c\u5feb\u6765\u770b\u770b\u6211\u7684\u7ec4\u5408\u6218\u7ee9\u5427\u3002%s"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v7

    iget-object v3, p0, Lcom/xueqiu/android/common/q$2;->b:Ljava/lang/String;

    aput-object v3, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1719
    const-string v1, "\u6211\u7684\u96ea\u7403\u7ec4\u5408$%s(%s)$\u6708\u62a5\u51fa\u7089\uff0c\u5feb\u6765\u770b\u770b\u6211\u7684\u7ec4\u5408\u6218\u7ee9\u5427\u3002"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1724
    :goto_0
    const-string v3, "extra_share_image"

    const v4, 0x7f020189

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1725
    const-string v3, "extra_share_content"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1726
    const-string v0, "extra_share_wx_content"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1727
    iget-object v0, p0, Lcom/xueqiu/android/common/q$2;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 704
    return-void

    .line 1721
    :cond_0
    const-string v0, "\u6211\u53d1\u73b0\u96ea\u7403\u7ec4\u5408$%s(%s)$\u7684\u6708\u62a5\u6218\u7ee9\u4e0d\u9519\uff0c\u5feb\u6765\u770b\u770b\u5427\u3002%s"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v7

    iget-object v3, p0, Lcom/xueqiu/android/common/q$2;->b:Ljava/lang/String;

    aput-object v3, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1722
    const-string v1, "\u6211\u53d1\u73b0\u96ea\u7403\u7ec4\u5408$%s(%s)$\u7684\u6708\u62a5\u6218\u7ee9\u4e0d\u9519\uff0c\u5feb\u6765\u770b\u770b\u5427\u3002"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
