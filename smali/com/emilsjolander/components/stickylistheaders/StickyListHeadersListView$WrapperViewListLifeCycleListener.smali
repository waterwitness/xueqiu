.class Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$WrapperViewListLifeCycleListener;
.super Ljava/lang/Object;
.source "StickyListHeadersListView.java"

# interfaces
.implements Lcom/emilsjolander/components/stickylistheaders/WrapperViewList$LifeCycleListener;


# instance fields
.field final synthetic this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;


# direct methods
.method private constructor <init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$WrapperViewListLifeCycleListener;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$1;)V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$WrapperViewListLifeCycleListener;-><init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V

    return-void
.end method


# virtual methods
.method public onDispatchDrawOccurred(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 423
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 424
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$WrapperViewListLifeCycleListener;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$WrapperViewListLifeCycleListener;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    # getter for: Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;
    invoke-static {v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->access$800(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getFixedFirstVisibleItem()I

    move-result v1

    # invokes: Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->updateOrClearHeader(I)V
    invoke-static {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->access$900(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;I)V

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$WrapperViewListLifeCycleListener;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    # getter for: Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;
    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->access$300(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$WrapperViewListLifeCycleListener;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    # getter for: Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Z
    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->access$1000(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 429
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$WrapperViewListLifeCycleListener;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    # getter for: Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mPaddingTop:I
    invoke-static {v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->access$1100(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)I

    move-result v1

    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$WrapperViewListLifeCycleListener;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$WrapperViewListLifeCycleListener;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v3}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 430
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$WrapperViewListLifeCycleListener;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$WrapperViewListLifeCycleListener;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    # getter for: Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;
    invoke-static {v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->access$300(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Landroid/view/View;

    move-result-object v1

    # invokes: Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    invoke-static {v0, p1, v1, v4, v5}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->access$1200(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 431
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 436
    :cond_1
    :goto_0
    return-void

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$WrapperViewListLifeCycleListener;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$WrapperViewListLifeCycleListener;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    # getter for: Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;
    invoke-static {v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->access$300(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Landroid/view/View;

    move-result-object v1

    # invokes: Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    invoke-static {v0, p1, v1, v4, v5}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->access$1300(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0
.end method
