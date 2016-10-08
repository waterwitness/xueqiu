.class final Lcom/nhaarman/listviewanimations/itemmanipulation/a/b;
.super Lcom/c/a/c;
.source "AnimateAdditionAdapter.java"


# instance fields
.field final synthetic a:Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;

.field private final b:I


# direct methods
.method constructor <init>(Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;I)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/a/b;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;

    invoke-direct {p0}, Lcom/c/a/c;-><init>()V

    .line 365
    iput p2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/a/b;->b:I

    .line 366
    return-void
.end method


# virtual methods
.method public final a(Lcom/c/a/a;)V
    .locals 7

    .prologue
    .line 370
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/a/b;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;->a(Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;)Lcom/nhaarman/listviewanimations/itemmanipulation/a/d;

    move-result-object v3

    iget v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/a/b;->b:I

    .line 1105
    const/4 v0, 0x0

    .line 1106
    iget-object v1, v3, Lcom/nhaarman/listviewanimations/itemmanipulation/a/d;->b:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 1107
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1108
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 1109
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    .line 1112
    :cond_1
    iget-object v0, v3, Lcom/nhaarman/listviewanimations/itemmanipulation/a/d;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1121
    iget-object v0, v3, Lcom/nhaarman/listviewanimations/itemmanipulation/a/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/util/Pair;

    .line 1122
    iget-object v0, v3, Lcom/nhaarman/listviewanimations/itemmanipulation/a/d;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1123
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v6

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v6, v1, :cond_2

    .line 1124
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_2

    .line 1127
    :cond_3
    iget-object v1, v3, Lcom/nhaarman/listviewanimations/itemmanipulation/a/d;->b:Ljava/util/Collection;

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1128
    iget-object v1, v3, Lcom/nhaarman/listviewanimations/itemmanipulation/a/d;->a:Lcom/nhaarman/listviewanimations/a/c;

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/nhaarman/listviewanimations/a/c;->a(ILjava/lang/Object;)V

    goto :goto_1

    .line 1130
    :cond_4
    iget-object v0, v3, Lcom/nhaarman/listviewanimations/itemmanipulation/a/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 371
    :cond_5
    return-void
.end method
