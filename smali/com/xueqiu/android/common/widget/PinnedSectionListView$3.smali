.class final Lcom/xueqiu/android/common/widget/PinnedSectionListView$3;
.super Ljava/lang/Object;
.source "PinnedSectionListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/widget/PinnedSectionListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/widget/PinnedSectionListView;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/widget/PinnedSectionListView;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView$3;->a:Lcom/xueqiu/android/common/widget/PinnedSectionListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView$3;->a:Lcom/xueqiu/android/common/widget/PinnedSectionListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->b()V

    .line 349
    return-void
.end method
