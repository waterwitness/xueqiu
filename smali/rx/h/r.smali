.class public final Lrx/h/r;
.super Lrx/g;
.source "TrampolineScheduler.java"


# static fields
.field static final b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/h/r;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lrx/h/r;


# instance fields
.field volatile a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lrx/h/r;

    invoke-direct {v0}, Lrx/h/r;-><init>()V

    sput-object v0, Lrx/h/r;->c:Lrx/h/r;

    .line 49
    const-class v0, Lrx/h/r;

    const-string v1, "a"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/h/r;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lrx/g;-><init>()V

    .line 46
    return-void
.end method

.method static synthetic a(II)I
    .locals 1

    .prologue
    .line 33
    .line 1136
    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 33
    goto :goto_0
.end method


# virtual methods
.method public final a()Lrx/h;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lrx/h/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lrx/h/s;-><init>(Lrx/h/r;B)V

    return-object v0
.end method
