.class final Lcom/nhaarman/listviewanimations/itemmanipulation/b/c;
.super Lcom/c/a/c;
.source "SwipeDismissTouchListener.java"


# instance fields
.field final synthetic a:Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;


# direct methods
.method private constructor <init>(Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/c;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;

    invoke-direct {p0}, Lcom/c/a/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;B)V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/c;-><init>(Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/c/a/a;)V
    .locals 1
    .param p1    # Lcom/c/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 241
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/c;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;->a(Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;)I

    .line 242
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/c;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;

    invoke-virtual {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;->b()V

    .line 243
    return-void
.end method
