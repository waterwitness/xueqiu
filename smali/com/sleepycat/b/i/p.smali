.class public final enum Lcom/sleepycat/b/i/p;
.super Ljava/lang/Enum;
.source "QuorumPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/i/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/i/p;

.field public static final enum b:Lcom/sleepycat/b/i/p;

.field private static final synthetic c:[Lcom/sleepycat/b/i/p;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/sleepycat/b/i/p;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/i/p;->a:Lcom/sleepycat/b/i/p;

    .line 30
    new-instance v0, Lcom/sleepycat/b/i/p;

    const-string v1, "SIMPLE_MAJORITY"

    invoke-direct {v0, v1, v3}, Lcom/sleepycat/b/i/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/i/p;->b:Lcom/sleepycat/b/i/p;

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sleepycat/b/i/p;

    sget-object v1, Lcom/sleepycat/b/i/p;->a:Lcom/sleepycat/b/i/p;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/b/i/p;->b:Lcom/sleepycat/b/i/p;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sleepycat/b/i/p;->c:[Lcom/sleepycat/b/i/p;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/i/p;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/sleepycat/b/i/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/p;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/i/p;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/sleepycat/b/i/p;->c:[Lcom/sleepycat/b/i/p;

    invoke-virtual {v0}, [Lcom/sleepycat/b/i/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/i/p;

    return-object v0
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/sleepycat/b/i/p$1;->a:[I

    invoke-virtual {p0}, Lcom/sleepycat/b/i/p;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown quorum:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 46
    :pswitch_0
    div-int/lit8 v0, p1, 0x2

    add-int/lit8 p1, v0, 0x1

    :pswitch_1
    return p1

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
