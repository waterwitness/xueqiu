.class final Lcom/xueqiu/android/community/a/r$1;
.super Ljava/lang/Object;
.source "PublicTimelineAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/r;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/a/r;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/r;)V
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Lcom/xueqiu/android/community/a/r$1;->a:Lcom/xueqiu/android/community/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 675
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/r$1;->a:Lcom/xueqiu/android/community/a/r;

    iget-object v1, v1, Lcom/xueqiu/android/community/a/r;->d:Lcom/xueqiu/android/community/a/o;

    invoke-static {v1}, Lcom/xueqiu/android/community/a/o;->a(Lcom/xueqiu/android/community/a/o;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/LiveNewsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 676
    iget-object v1, p0, Lcom/xueqiu/android/community/a/r$1;->a:Lcom/xueqiu/android/community/a/r;

    iget-object v1, v1, Lcom/xueqiu/android/community/a/r;->d:Lcom/xueqiu/android/community/a/o;

    invoke-static {v1}, Lcom/xueqiu/android/community/a/o;->a(Lcom/xueqiu/android/community/a/o;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 677
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x44c

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 678
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 679
    return-void
.end method
