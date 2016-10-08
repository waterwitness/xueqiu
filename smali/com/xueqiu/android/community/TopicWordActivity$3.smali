.class final Lcom/xueqiu/android/community/TopicWordActivity$3;
.super Ljava/lang/Object;
.source "TopicWordActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/TopicWordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/TopicWordActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/TopicWordActivity;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/xueqiu/android/community/TopicWordActivity$3;->a:Lcom/xueqiu/android/community/TopicWordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity$3;->a:Lcom/xueqiu/android/community/TopicWordActivity;

    invoke-static {v0, p2}, Lcom/xueqiu/android/community/TopicWordActivity;->a(Lcom/xueqiu/android/community/TopicWordActivity;I)V

    .line 153
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity$3;->a:Lcom/xueqiu/android/community/TopicWordActivity;

    invoke-static {v0, p2}, Lcom/xueqiu/android/community/TopicWordActivity;->b(Lcom/xueqiu/android/community/TopicWordActivity;I)V

    .line 154
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 148
    return-void
.end method
