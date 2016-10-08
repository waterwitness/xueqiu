.class public abstract Lcom/xueqiu/android/tactic/a/c;
.super Landroid/support/v7/widget/s;
.source "RecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/s",
        "<",
        "Landroid/support/v7/widget/ao;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Landroid/content/Context;

.field public d:Landroid/view/LayoutInflater;

.field public e:Lcom/d/a/b/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v7/widget/s;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/xueqiu/android/tactic/a/c;->c:Landroid/content/Context;

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/tactic/a/c;->d:Landroid/view/LayoutInflater;

    .line 24
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/tactic/a/c;->e:Lcom/d/a/b/d;

    .line 25
    return-void
.end method
