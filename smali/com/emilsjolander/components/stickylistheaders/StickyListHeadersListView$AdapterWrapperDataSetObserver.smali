.class Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$AdapterWrapperDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "StickyListHeadersListView.java"


# instance fields
.field final synthetic this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;


# direct methods
.method private constructor <init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$AdapterWrapperDataSetObserver;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$1;)V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$AdapterWrapperDataSetObserver;-><init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$AdapterWrapperDataSetObserver;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    # invokes: Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->clearHeader()V
    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->access$600(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V

    .line 389
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$AdapterWrapperDataSetObserver;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    # invokes: Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->clearHeader()V
    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->access$600(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V

    .line 394
    return-void
.end method
