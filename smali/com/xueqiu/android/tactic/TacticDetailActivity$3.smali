.class final Lcom/xueqiu/android/tactic/TacticDetailActivity$3;
.super Lcom/xueqiu/android/base/b/p;
.source "TacticDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/tactic/TacticDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/tactic/TacticDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/tactic/TacticDetailActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$3;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$3;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    const v1, 0x7f0703f3

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 425
    check-cast p1, Ljava/lang/Boolean;

    .line 1433
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1434
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$3;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->a(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Lcom/xueqiu/android/tactic/d/g;

    move-result-object v0

    const-string v1, "DISABLED"

    .line 2299
    iput-object v1, v0, Lcom/xueqiu/android/tactic/d/g;->owningStatus:Ljava/lang/String;

    .line 1435
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$3;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->k(Lcom/xueqiu/android/tactic/TacticDetailActivity;)V

    :goto_0
    return-void

    .line 1437
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$3;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    const v1, 0x7f0703f3

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
