.class final Lcom/xueqiu/android/common/widget/PinnedSectionListView$2;
.super Landroid/database/DataSetObserver;
.source "PinnedSectionListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/widget/PinnedSectionListView;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/widget/PinnedSectionListView;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/widget/PinnedSectionListView;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView$2;->a:Lcom/xueqiu/android/common/widget/PinnedSectionListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView$2;->a:Lcom/xueqiu/android/common/widget/PinnedSectionListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->b()V

    .line 136
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView$2;->a:Lcom/xueqiu/android/common/widget/PinnedSectionListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->b()V

    .line 139
    return-void
.end method
