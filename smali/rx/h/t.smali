.class final Lrx/h/t;
.super Ljava/lang/Object;
.source "TrampolineScheduler.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lrx/h/t;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lrx/c/a;

.field final b:Ljava/lang/Long;

.field final c:I


# direct methods
.method private constructor <init>(Lrx/c/a;Ljava/lang/Long;I)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lrx/h/t;->a:Lrx/c/a;

    .line 120
    iput-object p2, p0, Lrx/h/t;->b:Ljava/lang/Long;

    .line 121
    iput p3, p0, Lrx/h/t;->c:I

    .line 122
    return-void
.end method

.method synthetic constructor <init>(Lrx/c/a;Ljava/lang/Long;IB)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Lrx/h/t;-><init>(Lrx/c/a;Ljava/lang/Long;I)V

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 113
    check-cast p1, Lrx/h/t;

    .line 1126
    iget-object v0, p0, Lrx/h/t;->b:Ljava/lang/Long;

    iget-object v1, p1, Lrx/h/t;->b:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    .line 1127
    if-nez v0, :cond_0

    .line 1128
    iget v0, p0, Lrx/h/t;->c:I

    iget v1, p1, Lrx/h/t;->c:I

    invoke-static {v0, v1}, Lrx/h/r;->a(II)I

    move-result v0

    :cond_0
    return v0
.end method
