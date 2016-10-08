.class public final Lcom/xueqiu/android/stock/a/x$1;
.super Ljava/lang/Object;
.source "QuotesCenterRenderKit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/a/x;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/model/IndustryInStock;

.field final synthetic b:Lcom/xueqiu/android/stock/a/x;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/stock/a/x;Lcom/xueqiu/android/stock/model/IndustryInStock;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/xueqiu/android/stock/a/x$1;->b:Lcom/xueqiu/android/stock/a/x;

    iput-object p2, p0, Lcom/xueqiu/android/stock/a/x$1;->a:Lcom/xueqiu/android/stock/model/IndustryInStock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 102
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0xaf0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 103
    const-string v1, "name"

    iget-object v2, p0, Lcom/xueqiu/android/stock/a/x$1;->a:Lcom/xueqiu/android/stock/model/IndustryInStock;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/IndustryInStock;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 104
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 106
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/stock/a/x$1;->b:Lcom/xueqiu/android/stock/a/x;

    .line 2040
    iget-object v1, v1, Lcom/xueqiu/android/stock/a/x;->a:Landroid/content/Context;

    .line 106
    const-class v2, Lcom/xueqiu/android/stock/StockRankMoreListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    const-string v1, "extra_rank_type"

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    const-string v1, "extra_industry"

    iget-object v2, p0, Lcom/xueqiu/android/stock/a/x$1;->a:Lcom/xueqiu/android/stock/model/IndustryInStock;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 109
    iget-object v1, p0, Lcom/xueqiu/android/stock/a/x$1;->b:Lcom/xueqiu/android/stock/a/x;

    .line 3040
    iget-object v1, v1, Lcom/xueqiu/android/stock/a/x;->a:Landroid/content/Context;

    .line 109
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 110
    return-void
.end method
