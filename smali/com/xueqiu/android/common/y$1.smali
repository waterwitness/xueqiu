.class final Lcom/xueqiu/android/common/y$1;
.super Ljava/lang/Object;
.source "SuggestedFollowsFragment.java"

# interfaces
.implements Lcom/xueqiu/android/community/a/aw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/y;->c(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/y;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/y;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/xueqiu/android/common/y$1;->a:Lcom/xueqiu/android/common/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JZ)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/xueqiu/android/common/y$1;->a:Lcom/xueqiu/android/common/y;

    invoke-static {v0, p1, p2, p3}, Lcom/xueqiu/android/common/y;->a(Lcom/xueqiu/android/common/y;JZ)V

    .line 91
    iget-object v0, p0, Lcom/xueqiu/android/common/y$1;->a:Lcom/xueqiu/android/common/y;

    invoke-static {v0}, Lcom/xueqiu/android/common/y;->a(Lcom/xueqiu/android/common/y;)Lcom/xueqiu/android/community/a/at;

    move-result-object v0

    .line 1084
    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/at;->notifyDataSetChanged()V

    .line 92
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/xueqiu/android/common/y$1;->a:Lcom/xueqiu/android/common/y;

    invoke-static {v0, p1, p2}, Lcom/xueqiu/android/common/y;->a(Lcom/xueqiu/android/common/y;Ljava/lang/String;Z)V

    .line 97
    iget-object v0, p0, Lcom/xueqiu/android/common/y$1;->a:Lcom/xueqiu/android/common/y;

    invoke-static {v0}, Lcom/xueqiu/android/common/y;->a(Lcom/xueqiu/android/common/y;)Lcom/xueqiu/android/community/a/at;

    move-result-object v0

    .line 2084
    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/at;->notifyDataSetChanged()V

    .line 98
    return-void
.end method

.method public final b(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/xueqiu/android/common/y$1;->a:Lcom/xueqiu/android/common/y;

    invoke-static {v0, p1, p2}, Lcom/xueqiu/android/common/y;->b(Lcom/xueqiu/android/common/y;Ljava/lang/String;Z)V

    .line 103
    iget-object v0, p0, Lcom/xueqiu/android/common/y$1;->a:Lcom/xueqiu/android/common/y;

    invoke-static {v0}, Lcom/xueqiu/android/common/y;->a(Lcom/xueqiu/android/common/y;)Lcom/xueqiu/android/community/a/at;

    move-result-object v0

    .line 3084
    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/at;->notifyDataSetChanged()V

    .line 104
    return-void
.end method
