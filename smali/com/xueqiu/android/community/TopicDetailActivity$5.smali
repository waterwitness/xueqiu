.class final Lcom/xueqiu/android/community/TopicDetailActivity$5;
.super Ljava/lang/Object;
.source "TopicDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/TopicDetailActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/TopicDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/TopicDetailActivity;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/xueqiu/android/community/TopicDetailActivity$5;->a:Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity$5;->a:Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/TopicDetailActivity;->finish()V

    .line 208
    return-void
.end method
