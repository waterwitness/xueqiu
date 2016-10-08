.class final Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/e;
.super Ljava/lang/Object;
.source "DragAndDropHandler.java"

# interfaces
.implements Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/i;


# instance fields
.field final synthetic a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;


# direct methods
.method private constructor <init>(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/e;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    return-void
.end method

.method synthetic constructor <init>(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;B)V
    .locals 0

    .prologue
    .line 556
    invoke-direct {p0, p1}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/e;-><init>(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)V

    return-void
.end method


# virtual methods
.method public final a(JF)V
    .locals 3

    .prologue
    .line 560
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/e;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->j()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/f;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/f;-><init>(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/e;JF)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 561
    return-void
.end method
