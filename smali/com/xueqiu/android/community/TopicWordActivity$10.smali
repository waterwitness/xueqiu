.class final Lcom/xueqiu/android/community/TopicWordActivity$10;
.super Ljava/lang/Object;
.source "TopicWordActivity.java"

# interfaces
.implements Lcom/xueqiu/android/community/widget/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/TopicWordActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/TopicWordActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/TopicWordActivity;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/xueqiu/android/community/TopicWordActivity$10;->a:Lcom/xueqiu/android/community/TopicWordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 520
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity$10;->a:Lcom/xueqiu/android/community/TopicWordActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/TopicWordActivity;->d(Lcom/xueqiu/android/community/TopicWordActivity;)V

    .line 522
    invoke-static {}, Lcom/xueqiu/android/base/util/ap;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 526
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity$10;->a:Lcom/xueqiu/android/community/TopicWordActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/TopicWordActivity;->e(Lcom/xueqiu/android/community/TopicWordActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/xueqiu/android/base/util/ap;->a(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;)Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/community/TopicWordActivity$10$1;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/community/TopicWordActivity$10$1;-><init>(Lcom/xueqiu/android/community/TopicWordActivity$10;Ljava/lang/Integer;)V

    invoke-virtual {v1, v2}, Lrx/a;->b(Lrx/i;)Lrx/j;

    .line 547
    return-void
.end method
