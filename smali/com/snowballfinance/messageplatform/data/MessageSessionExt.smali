.class public Lcom/snowballfinance/messageplatform/data/MessageSessionExt;
.super Ljava/lang/Object;
.source "MessageSessionExt.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BINARY_LENGTH:I = 0x19

.field private static final serialVersionUID:J = 0x49719f342e54af67L


# instance fields
.field private ownerId:Ljava/lang/Long;

.field private targetGroup:Ljava/lang/Boolean;

.field private targetId:Ljava/lang/Long;

.field private targetLastReadTimestamp:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeMessageSessionExt(Lcom/snowballfinance/messageplatform/a/a/d;)Lcom/snowballfinance/messageplatform/data/MessageSessionExt;
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 137
    new-instance v1, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;

    invoke-direct {v1}, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;-><init>()V

    .line 138
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->h()I

    move-result v2

    .line 140
    const/16 v3, 0x19

    if-lt v2, v3, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->setOwnerId(Ljava/lang/Long;)V

    .line 142
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->setTargetId(Ljava/lang/Long;)V

    .line 143
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->a()I

    move-result v3

    if-ne v3, v0, :cond_2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->setTargetGroup(Ljava/lang/Boolean;)V

    .line 144
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->setTargetLastReadTimestamp(Ljava/lang/Long;)V

    .line 146
    :cond_0
    add-int/lit8 v0, v2, -0x19

    .line 147
    if-lez v0, :cond_1

    .line 149
    new-array v0, v0, [B

    .line 150
    invoke-virtual {p0, v0}, Lcom/snowballfinance/messageplatform/a/a/d;->a([B)V

    .line 152
    :cond_1
    return-object v1

    .line 143
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/snowballfinance/messageplatform/data/MessageSessionExt;
    .locals 3

    .prologue
    .line 115
    :try_start_0
    new-instance v0, Lcom/snowballfinance/messageplatform/a/a/e;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/a/e;-><init>()V

    .line 116
    invoke-virtual {p0, v0}, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->encodeMessageSessionExt(Lcom/snowballfinance/messageplatform/a/a/e;)V

    .line 117
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/a/a/e;->toByteArray()[B

    move-result-object v1

    .line 118
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/a/a/e;->close()V

    .line 119
    new-instance v0, Lcom/snowballfinance/messageplatform/a/a/d;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Lcom/snowballfinance/messageplatform/a/a/d;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->decodeMessageSessionExt(Lcom/snowballfinance/messageplatform/a/a/d;)Lcom/snowballfinance/messageplatform/data/MessageSessionExt;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->clone()Lcom/snowballfinance/messageplatform/data/MessageSessionExt;

    move-result-object v0

    return-object v0
.end method

.method public encodeMessageSessionExt(Lcom/snowballfinance/messageplatform/a/a/e;)V
    .locals 2

    .prologue
    .line 127
    sget-boolean v0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->ownerId:Ljava/lang/Long;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 128
    :cond_0
    sget-boolean v0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->targetId:Ljava/lang/Long;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 129
    :cond_1
    const/16 v0, 0x19

    invoke-virtual {p1, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->d(I)V

    .line 130
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->ownerId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/snowballfinance/messageplatform/a/a/e;->a(J)V

    .line 131
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->targetId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/snowballfinance/messageplatform/a/a/e;->a(J)V

    .line 132
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->targetGroup:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->targetGroup:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->a(I)V

    .line 133
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->targetLastReadTimestamp:Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->targetLastReadTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_1
    invoke-virtual {p1, v0, v1}, Lcom/snowballfinance/messageplatform/a/a/e;->a(J)V

    .line 134
    return-void

    .line 132
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 133
    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    if-ne p0, p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 86
    :cond_3
    check-cast p1, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;

    .line 88
    iget-object v2, p0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->ownerId:Ljava/lang/Long;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->ownerId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->ownerId:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->ownerId:Ljava/lang/Long;

    if-nez v2, :cond_4

    .line 89
    :cond_6
    iget-object v2, p0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->targetGroup:Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->targetGroup:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->targetGroup:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->targetGroup:Ljava/lang/Boolean;

    if-nez v2, :cond_7

    .line 90
    :cond_9
    iget-object v2, p0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->targetId:Ljava/lang/Long;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->targetId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->targetId:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p1, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->targetId:Ljava/lang/Long;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getOwnerId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->ownerId:Ljava/lang/Long;

    return-object v0
.end method

.method public getTargetGroup()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->targetGroup:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTargetId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->targetId:Ljava/lang/Long;

    return-object v0
.end method

.method public getTargetLastReadTimestamp()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->targetLastReadTimestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->targetId:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->targetId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    .line 98
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->targetGroup:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->targetGroup:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 99
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->ownerId:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->ownerId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 100
    return v0

    :cond_1
    move v0, v1

    .line 97
    goto :goto_0

    :cond_2
    move v0, v1

    .line 98
    goto :goto_1
.end method

.method public setOwnerId(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->ownerId:Ljava/lang/Long;

    .line 71
    return-void
.end method

.method public setTargetGroup(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->targetGroup:Ljava/lang/Boolean;

    .line 63
    return-void
.end method

.method public setTargetId(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->targetId:Ljava/lang/Long;

    .line 55
    return-void
.end method

.method public setTargetLastReadTimestamp(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->targetLastReadTimestamp:Ljava/lang/Long;

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MessageSessionExt{targetId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->targetId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->targetGroup:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ownerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->ownerId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetLastReadTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->targetLastReadTimestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
