.class final Lcom/xueqiu/android/community/TopicWordActivity$2;
.super Ljava/lang/Object;
.source "TopicWordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 560
    iput-object p1, p0, Lcom/xueqiu/android/community/TopicWordActivity$2;->a:Lcom/xueqiu/android/community/TopicWordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity$2;->a:Lcom/xueqiu/android/community/TopicWordActivity;

    iget-object v0, v0, Lcom/xueqiu/android/community/TopicWordActivity;->A:Lcom/xueqiu/android/community/widget/j;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/j;->a()V

    .line 564
    return-void
.end method
