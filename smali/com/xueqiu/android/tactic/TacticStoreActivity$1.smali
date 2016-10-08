.class final Lcom/xueqiu/android/tactic/TacticStoreActivity$1;
.super Lcom/xueqiu/android/base/b/p;
.source "TacticStoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/tactic/TacticStoreActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/tactic/d/g;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/tactic/TacticStoreActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/tactic/TacticStoreActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/xueqiu/android/tactic/TacticStoreActivity$1;->a:Lcom/xueqiu/android/tactic/TacticStoreActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;Z)V

    .line 64
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 60
    check-cast p1, Ljava/util/List;

    .line 5068
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5069
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticStoreActivity$1;->a:Lcom/xueqiu/android/tactic/TacticStoreActivity;

    invoke-static {v0}, Lcom/xueqiu/android/tactic/TacticStoreActivity;->a(Lcom/xueqiu/android/tactic/TacticStoreActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5070
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticStoreActivity$1;->a:Lcom/xueqiu/android/tactic/TacticStoreActivity;

    invoke-static {v0}, Lcom/xueqiu/android/tactic/TacticStoreActivity;->a(Lcom/xueqiu/android/tactic/TacticStoreActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5071
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticStoreActivity$1;->a:Lcom/xueqiu/android/tactic/TacticStoreActivity;

    invoke-static {v0}, Lcom/xueqiu/android/tactic/TacticStoreActivity;->b(Lcom/xueqiu/android/tactic/TacticStoreActivity;)Lcom/xueqiu/android/tactic/a/h;

    move-result-object v0

    .line 5338
    iget-object v0, v0, Landroid/support/v7/widget/s;->a:Landroid/support/v7/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/widget/t;->a()V

    .line 5072
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticStoreActivity$1;->a:Lcom/xueqiu/android/tactic/TacticStoreActivity;

    invoke-static {v0}, Lcom/xueqiu/android/tactic/TacticStoreActivity;->c(Lcom/xueqiu/android/tactic/TacticStoreActivity;)V

    .line 60
    :cond_0
    return-void
.end method
