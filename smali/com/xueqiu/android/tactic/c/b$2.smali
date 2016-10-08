.class final Lcom/xueqiu/android/tactic/c/b$2;
.super Lcom/xueqiu/android/base/b/p;
.source "TacticPushFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/tactic/c/b;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/tactic/d/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/tactic/c/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/tactic/c/b;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/xueqiu/android/tactic/c/b$2;->a:Lcom/xueqiu/android/tactic/c/b;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 92
    check-cast p1, Lcom/xueqiu/android/tactic/d/h;

    .line 1100
    if-eqz p1, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/xueqiu/android/tactic/c/b$2;->a:Lcom/xueqiu/android/tactic/c/b;

    invoke-static {v0, p1}, Lcom/xueqiu/android/tactic/c/b;->a(Lcom/xueqiu/android/tactic/c/b;Lcom/xueqiu/android/tactic/d/h;)Lcom/xueqiu/android/tactic/d/h;

    .line 1102
    iget-object v0, p0, Lcom/xueqiu/android/tactic/c/b$2;->a:Lcom/xueqiu/android/tactic/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/tactic/c/b;->b(Lcom/xueqiu/android/tactic/c/b;)V

    .line 92
    :cond_0
    return-void
.end method
