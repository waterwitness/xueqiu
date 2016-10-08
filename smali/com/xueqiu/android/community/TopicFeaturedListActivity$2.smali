.class final Lcom/xueqiu/android/community/TopicFeaturedListActivity$2;
.super Ljava/lang/Object;
.source "TopicFeaturedListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/TopicFeaturedListActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/TopicFeaturedListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/TopicFeaturedListActivity;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity$2;->a:Lcom/xueqiu/android/community/TopicFeaturedListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity$2;->a:Lcom/xueqiu/android/community/TopicFeaturedListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->b(Lcom/xueqiu/android/community/TopicFeaturedListActivity;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/d/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/d/d;->a(Z)V

    .line 81
    return-void
.end method
