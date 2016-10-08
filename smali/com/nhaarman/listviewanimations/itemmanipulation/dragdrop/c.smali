.class final Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/c;
.super Ljava/lang/Object;
.source "DragAndDropHandler.java"

# interfaces
.implements Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/i;


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 509
    const-class v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/c;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/c;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    return-void
.end method

.method synthetic constructor <init>(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;B)V
    .locals 0

    .prologue
    .line 509
    invoke-direct {p0, p1}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/c;-><init>(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)V

    return-void
.end method


# virtual methods
.method public final a(JF)V
    .locals 7

    .prologue
    .line 513
    sget-boolean v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/c;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/c;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/c;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->j()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/d;

    iget-object v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/c;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v2}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Landroid/view/View;

    move-result-object v3

    move-object v2, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/d;-><init>(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/c;Landroid/view/View;JF)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 515
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/c;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/c;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    iget-object v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/c;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v2}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->c(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;J)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;Landroid/view/View;)Landroid/view/View;

    .line 516
    return-void
.end method
