.class final Lrx/d/a/aq;
.super Lrx/i;
.source "OperatorZip.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<[",
        "Lrx/a;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lrx/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final b:Lrx/d/a/an;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/a/an",
            "<TR;>;"
        }
    .end annotation
.end field

.field final c:Lrx/d/a/ap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/a/ap",
            "<TR;>;"
        }
    .end annotation
.end field

.field d:Z

.field final synthetic f:Lrx/d/a/am;


# direct methods
.method public constructor <init>(Lrx/d/a/am;Lrx/i;Lrx/d/a/an;Lrx/d/a/ap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<-TR;>;",
            "Lrx/d/a/an",
            "<TR;>;",
            "Lrx/d/a/ap",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 126
    iput-object p1, p0, Lrx/d/a/aq;->f:Lrx/d/a/am;

    .line 127
    invoke-direct {p0, p2}, Lrx/i;-><init>(Lrx/i;)V

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/d/a/aq;->d:Z

    .line 128
    iput-object p2, p0, Lrx/d/a/aq;->a:Lrx/i;

    .line 129
    iput-object p3, p0, Lrx/d/a/aq;->b:Lrx/d/a/an;

    .line 130
    iput-object p4, p0, Lrx/d/a/aq;->c:Lrx/d/a/ap;

    .line 131
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lrx/d/a/aq;->d:Z

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lrx/d/a/aq;->a:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    .line 141
    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 120
    check-cast p1, [Lrx/a;

    .line 1150
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_2

    .line 1151
    :cond_0
    iget-object v0, p0, Lrx/d/a/aq;->a:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    :cond_1
    return-void

    .line 1153
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/d/a/aq;->d:Z

    .line 1154
    iget-object v2, p0, Lrx/d/a/aq;->b:Lrx/d/a/an;

    iget-object v0, p0, Lrx/d/a/aq;->c:Lrx/d/a/ap;

    .line 1201
    array-length v3, p1

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v2, Lrx/d/a/an;->f:[Ljava/lang/Object;

    .line 1202
    iput-object v0, v2, Lrx/d/a/an;->g:Ljava/util/concurrent/atomic/AtomicLong;

    move v0, v1

    .line 1203
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_3

    .line 1204
    new-instance v3, Lrx/d/a/ao;

    invoke-direct {v3, v2}, Lrx/d/a/ao;-><init>(Lrx/d/a/an;)V

    .line 1205
    iget-object v4, v2, Lrx/d/a/an;->f:[Ljava/lang/Object;

    aput-object v3, v4, v0

    .line 1206
    iget-object v4, v2, Lrx/d/a/an;->a:Lrx/j/b;

    invoke-virtual {v4, v3}, Lrx/j/b;->a(Lrx/j;)V

    .line 1203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1209
    :cond_3
    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 1210
    aget-object v3, p1, v1

    iget-object v0, v2, Lrx/d/a/an;->f:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Lrx/d/a/ao;

    invoke-virtual {v3, v0}, Lrx/a;->a(Lrx/i;)Lrx/j;

    .line 1209
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lrx/d/a/aq;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Throwable;)V

    .line 146
    return-void
.end method
