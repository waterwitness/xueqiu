.class public Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView;
.super Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;
.source "ExpandableStickyListHeadersListView.java"


# instance fields
.field a:Lse/emilsjolander/stickylistheaders/g;

.field b:Lse/emilsjolander/stickylistheaders/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance v0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView$1;

    invoke-direct {v0, p0}, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView$1;-><init>(Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView;)V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView;->b:Lse/emilsjolander/stickylistheaders/h;

    .line 47
    return-void
.end method


# virtual methods
.method public getAdapter()Lse/emilsjolander/stickylistheaders/g;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/g;

    return-object v0
.end method

.method public bridge synthetic getAdapter()Lse/emilsjolander/stickylistheaders/l;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView;->getAdapter()Lse/emilsjolander/stickylistheaders/g;

    move-result-object v0

    return-object v0
.end method

.method public setAdapter(Lse/emilsjolander/stickylistheaders/l;)V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lse/emilsjolander/stickylistheaders/g;

    invoke-direct {v0, p1}, Lse/emilsjolander/stickylistheaders/g;-><init>(Lse/emilsjolander/stickylistheaders/l;)V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/g;

    .line 57
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/g;

    invoke-super {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setAdapter(Lse/emilsjolander/stickylistheaders/l;)V

    .line 58
    return-void
.end method

.method public setAnimExecutor(Lse/emilsjolander/stickylistheaders/h;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView;->b:Lse/emilsjolander/stickylistheaders/h;

    .line 104
    return-void
.end method
