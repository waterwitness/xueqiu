.class final Lcom/xueqiu/android/stock/c/n$5;
.super Ljava/lang/Object;
.source "PortfolioFragment.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/n;
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/xueqiu/android/stock/c/n;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/n;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/n$5;->b:Lcom/xueqiu/android/stock/c/n;

    iput-object p2, p0, Lcom/xueqiu/android/stock/c/n$5;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 659
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n$5;->b:Lcom/xueqiu/android/stock/c/n;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/n;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/n$5;->b:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/n;->r(Lcom/xueqiu/android/stock/c/n;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/stock/c/n$5;->a:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    return-void
.end method
