.class public final enum Lcom/sleepycat/b/i/o;
.super Ljava/lang/Enum;
.source "NodeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/i/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/i/o;

.field public static final enum b:Lcom/sleepycat/b/i/o;

.field private static final synthetic c:[Lcom/sleepycat/b/i/o;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/sleepycat/b/i/o;

    const-string v1, "MONITOR"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/i/o;->a:Lcom/sleepycat/b/i/o;

    .line 26
    new-instance v0, Lcom/sleepycat/b/i/o;

    const-string v1, "ELECTABLE"

    invoke-direct {v0, v1, v3}, Lcom/sleepycat/b/i/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/i/o;->b:Lcom/sleepycat/b/i/o;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sleepycat/b/i/o;

    sget-object v1, Lcom/sleepycat/b/i/o;->a:Lcom/sleepycat/b/i/o;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/b/i/o;->b:Lcom/sleepycat/b/i/o;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sleepycat/b/i/o;->c:[Lcom/sleepycat/b/i/o;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/i/o;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/sleepycat/b/i/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/o;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/i/o;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/sleepycat/b/i/o;->c:[Lcom/sleepycat/b/i/o;

    invoke-virtual {v0}, [Lcom/sleepycat/b/i/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/i/o;

    return-object v0
.end method
