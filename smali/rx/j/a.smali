.class public final Lrx/j/a;
.super Ljava/lang/Object;
.source "BooleanSubscription.java"

# interfaces
.implements Lrx/j;


# static fields
.field static final b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/j/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile a:I

.field private final c:Lrx/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-class v0, Lrx/j/a;

    const-string v1, "a"

    .line 33
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/j/a;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/j/a;->c:Lrx/c/a;

    .line 37
    return-void
.end method

.method private constructor <init>(Lrx/c/a;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lrx/j/a;->c:Lrx/c/a;

    .line 41
    return-void
.end method

.method public static a()Lrx/j/a;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lrx/j/a;

    invoke-direct {v0}, Lrx/j/a;-><init>()V

    return-object v0
.end method

.method public static a(Lrx/c/a;)Lrx/j/a;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lrx/j/a;

    invoke-direct {v0, p0}, Lrx/j/a;-><init>(Lrx/c/a;)V

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 3

    .prologue
    .line 70
    sget-object v0, Lrx/j/a;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lrx/j/a;->c:Lrx/c/a;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lrx/j/a;->c:Lrx/c/a;

    invoke-interface {v0}, Lrx/c/a;->a()V

    .line 75
    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lrx/j/a;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
