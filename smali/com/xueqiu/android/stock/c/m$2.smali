.class final Lcom/xueqiu/android/stock/c/m$2;
.super Ljava/lang/Object;
.source "PortfolioContainerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/m;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/m;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/m;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/m$2;->a:Lcom/xueqiu/android/stock/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 232
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m$2;->a:Lcom/xueqiu/android/stock/c/m;

    .line 1071
    iput v2, v0, Lcom/xueqiu/android/stock/c/m;->a:I

    .line 233
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m$2;->a:Lcom/xueqiu/android/stock/c/m;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/m;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const-string v1, "portfolio_page_type"

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 234
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m$2;->a:Lcom/xueqiu/android/stock/c/m;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/m;->u()V

    .line 235
    return-void
.end method
