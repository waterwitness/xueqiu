.class final Lcom/xueqiu/android/community/c/d$3;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/c/d;->C_()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/d;)V
    .locals 0

    .prologue
    .line 757
    iput-object p1, p0, Lcom/xueqiu/android/community/c/d$3;->a:Lcom/xueqiu/android/community/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d$3;->a:Lcom/xueqiu/android/community/c/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/d;->d(Lcom/xueqiu/android/community/c/d;)V

    .line 761
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d$3;->a:Lcom/xueqiu/android/community/c/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/d;->e(Lcom/xueqiu/android/community/c/d;)Z

    .line 763
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d$3;->a:Lcom/xueqiu/android/community/c/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/d;->f(Lcom/xueqiu/android/community/c/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/c/d$3;->a:Lcom/xueqiu/android/community/c/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/d;->c(Lcom/xueqiu/android/community/c/d;)Lcom/xueqiu/android/community/widget/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d$3;->a:Lcom/xueqiu/android/community/c/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/d;->c(Lcom/xueqiu/android/community/c/d;)Lcom/xueqiu/android/community/widget/i;

    move-result-object v0

    .line 1225
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Z)V

    .line 765
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d$3;->a:Lcom/xueqiu/android/community/c/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/d;->g(Lcom/xueqiu/android/community/c/d;)Z

    .line 767
    :cond_0
    return-void
.end method
