.class Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$WrapperListScrollListener;
.super Ljava/lang/Object;
.source "StickyListHeadersListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;


# direct methods
.method private constructor <init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$WrapperListScrollListener;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$1;)V
    .locals 0

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$WrapperListScrollListener;-><init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$WrapperListScrollListener;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    # getter for: Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;
    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->access$700(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$WrapperListScrollListener;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    # getter for: Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;
    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->access$700(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$WrapperListScrollListener;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$WrapperListScrollListener;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    # getter for: Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;
    invoke-static {v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->access$800(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getFixedFirstVisibleItem()I

    move-result v1

    # invokes: Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->updateOrClearHeader(I)V
    invoke-static {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->access$900(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;I)V

    .line 406
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$WrapperListScrollListener;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    # getter for: Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;
    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->access$700(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$WrapperListScrollListener;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    # getter for: Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;
    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->access$700(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 413
    :cond_0
    return-void
.end method
