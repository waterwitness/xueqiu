.class final Lcom/xueqiu/android/tactic/TacticDetailActivity$10;
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
        "Lcom/xueqiu/android/common/model/PagedList",
        "<",
        "Lcom/xueqiu/android/tactic/d/b;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/tactic/TacticDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/tactic/TacticDetailActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$10;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 296
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 297
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$10;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->l(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Z

    .line 298
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 293
    check-cast p1, Lcom/xueqiu/android/common/model/PagedList;

    .line 1302
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$10;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->a(Lcom/xueqiu/android/tactic/TacticDetailActivity;Lcom/xueqiu/android/common/model/PagedList;)V

    .line 1303
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$10;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->l(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Z

    .line 293
    return-void
.end method
