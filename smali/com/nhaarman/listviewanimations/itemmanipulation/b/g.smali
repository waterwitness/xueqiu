.class final Lcom/nhaarman/listviewanimations/itemmanipulation/b/g;
.super Lcom/c/a/c;
.source "SwipeTouchListener.java"


# instance fields
.field final synthetic a:Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;

.field private final b:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:I


# direct methods
.method private constructor <init>(Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;Landroid/view/View;I)V
    .locals 0
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 698
    iput-object p1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/g;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;

    invoke-direct {p0}, Lcom/c/a/c;-><init>()V

    .line 699
    iput-object p2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/g;->b:Landroid/view/View;

    .line 700
    iput p3, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/g;->c:I

    .line 701
    return-void
.end method

.method synthetic constructor <init>(Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;Landroid/view/View;IB)V
    .locals 0

    .prologue
    .line 691
    invoke-direct {p0, p1, p2, p3}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/g;-><init>(Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/c/a/a;)V
    .locals 3
    .param p1    # Lcom/c/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 705
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/g;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->a(Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;)I

    .line 706
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/g;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;

    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/g;->b:Landroid/view/View;

    iget v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/g;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->a(Landroid/view/View;I)V

    .line 707
    return-void
.end method
