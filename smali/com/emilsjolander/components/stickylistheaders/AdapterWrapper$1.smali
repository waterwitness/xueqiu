.class Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "AdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;


# direct methods
.method constructor <init>(Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    # invokes: Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->access$201(Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;)V

    .line 48
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    # getter for: Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mHeaderCache:Ljava/util/List;
    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->access$000(Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 42
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    # invokes: Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V
    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->access$101(Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;)V

    .line 43
    return-void
.end method
