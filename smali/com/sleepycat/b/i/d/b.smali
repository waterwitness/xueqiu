.class public final enum Lcom/sleepycat/b/i/d/b;
.super Ljava/lang/Enum;
.source "GroupChangeEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/i/d/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/i/d/b;

.field public static final enum b:Lcom/sleepycat/b/i/d/b;

.field private static final synthetic c:[Lcom/sleepycat/b/i/d/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/sleepycat/b/i/d/b;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/i/d/b;->a:Lcom/sleepycat/b/i/d/b;

    .line 36
    new-instance v0, Lcom/sleepycat/b/i/d/b;

    const-string v1, "REMOVE"

    invoke-direct {v0, v1, v3}, Lcom/sleepycat/b/i/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/i/d/b;->b:Lcom/sleepycat/b/i/d/b;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sleepycat/b/i/d/b;

    sget-object v1, Lcom/sleepycat/b/i/d/b;->a:Lcom/sleepycat/b/i/d/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/b/i/d/b;->b:Lcom/sleepycat/b/i/d/b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sleepycat/b/i/d/b;->c:[Lcom/sleepycat/b/i/d/b;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/i/d/b;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/sleepycat/b/i/d/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/d/b;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/i/d/b;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/sleepycat/b/i/d/b;->c:[Lcom/sleepycat/b/i/d/b;

    invoke-virtual {v0}, [Lcom/sleepycat/b/i/d/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/i/d/b;

    return-object v0
.end method
