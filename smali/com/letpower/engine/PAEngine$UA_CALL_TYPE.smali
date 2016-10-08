.class public final enum Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;
.super Ljava/lang/Enum;
.source "PAEngine.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

.field public static final enum UA_CALL_TYPE_NULL:Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

.field public static final enum UA_CALL_TYPE_VIDEO:Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

.field public static final enum UA_CALL_TYPE_VOICE:Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;


# instance fields
.field private final _call_type:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    const-string v1, "UA_CALL_TYPE_VOICE"

    invoke-direct {v0, v1, v3, v3}, Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;->UA_CALL_TYPE_VOICE:Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    new-instance v0, Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    const-string v1, "UA_CALL_TYPE_VIDEO"

    invoke-direct {v0, v1, v4, v4}, Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;->UA_CALL_TYPE_VIDEO:Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    new-instance v0, Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    const-string v1, "UA_CALL_TYPE_NULL"

    const/16 v2, 0xff

    invoke-direct {v0, v1, v5, v2}, Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;->UA_CALL_TYPE_NULL:Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    sget-object v1, Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;->UA_CALL_TYPE_VOICE:Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;->UA_CALL_TYPE_VIDEO:Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;->UA_CALL_TYPE_NULL:Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;->ENUM$VALUES:[Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;->_call_type:I

    .line 14
    return-void
.end method

.method public static getByValue(I)Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;
    .locals 5

    .prologue
    .line 17
    invoke-static {}, Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;->values()[Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No call type with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_0
    aget-object v3, v1, v0

    .line 18
    iget v4, v3, Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;->_call_type:I

    if-ne v4, p0, :cond_1

    .line 19
    return-object v3

    .line 17
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;->ENUM$VALUES:[Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    array-length v1, v0

    new-array v2, v1, [Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
