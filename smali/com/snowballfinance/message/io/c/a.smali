.class public abstract Lcom/snowballfinance/message/io/c/a;
.super Ljava/lang/Object;
.source "AbstractFragmentHandler.java"

# interfaces
.implements Lcom/snowballfinance/message/io/c/g;


# instance fields
.field protected final a:Lcom/snowballfinance/message/io/logger/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/snowballfinance/message/io/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/snowballfinance/message/io/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    return-void
.end method


# virtual methods
.method protected a(Lcom/snowballfinance/message/io/c/c;Lcom/snowballfinance/message/io/b;)V
    .locals 10

    .prologue
    const/4 v2, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 127
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v0}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v1, "receive [PKI:%s, ACK:%s] from %s."

    new-array v2, v2, [Ljava/lang/Object;

    .line 50095
    iget-wide v4, p2, Lcom/snowballfinance/message/io/b;->a:J

    .line 129
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    .line 50096
    iget-boolean v3, p2, Lcom/snowballfinance/message/io/b;->c:Z

    .line 129
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    .line 50097
    iget-object v3, p1, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 129
    aput-object v3, v2, v8

    .line 128
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 50098
    :cond_0
    :try_start_0
    iget-object v0, p2, Lcom/snowballfinance/message/io/b;->g:[B

    .line 50099
    iget-boolean v1, p2, Lcom/snowballfinance/message/io/b;->e:Z

    .line 133
    if-eqz v1, :cond_1

    .line 134
    invoke-static {v0}, Lcom/snowballfinance/message/io/b/d;->a([B)[B

    move-result-object v0

    .line 136
    :cond_1
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [B

    .line 137
    const/4 v2, 0x1

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    const/4 v2, 0x0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    mul-int/lit16 v0, v0, 0x400

    .line 139
    invoke-static {v1}, Lcom/snowballfinance/message/a/b;->a([B)Ljava/security/Key;

    move-result-object v1

    .line 50100
    iput-object v1, p1, Lcom/snowballfinance/message/io/c/c;->d:Ljava/security/Key;

    .line 50102
    iput v0, p1, Lcom/snowballfinance/message/io/c/c;->e:I

    .line 142
    const/16 v2, 0x20

    new-array v2, v2, [B

    .line 143
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 144
    invoke-virtual {v3, v2}, Ljava/util/Random;->nextBytes([B)V

    .line 50104
    iput-object v2, p1, Lcom/snowballfinance/message/io/c/c;->f:[B

    .line 50106
    iget-object v3, p1, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 146
    invoke-virtual {v3}, Lcom/snowballfinance/message/io/c/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 147
    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x20

    add-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, 0x1

    array-length v5, v3

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 148
    const/4 v5, 0x0

    array-length v6, v3

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 149
    const/4 v5, 0x0

    const/4 v6, 0x1

    array-length v7, v3

    invoke-static {v3, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    const/4 v5, 0x0

    array-length v6, v3

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x20

    invoke-static {v2, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    array-length v2, v3

    add-int/lit8 v2, v2, 0x21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v4, v2, v6, v7}, Lcom/snowballfinance/message/io/d;->b([BIJ)V

    .line 152
    array-length v2, v3

    add-int/lit8 v2, v2, 0x29

    array-length v5, v3

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    .line 153
    const/4 v2, 0x0

    array-length v5, v3

    add-int/lit8 v5, v5, 0x2a

    array-length v6, v3

    invoke-static {v3, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50107
    iget-boolean v2, p2, Lcom/snowballfinance/message/io/b;->c:Z

    .line 154
    if-eqz v2, :cond_2

    .line 50108
    iget-object v2, p1, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 155
    invoke-static {p2}, Lcom/snowballfinance/message/io/c/d;->b(Lcom/snowballfinance/message/io/b;)Lcom/snowballfinance/message/io/b;

    move-result-object v2

    .line 50109
    iget-object v3, p1, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 156
    invoke-virtual {v3, v2}, Lcom/snowballfinance/message/io/c/d;->a(Lcom/snowballfinance/message/io/b;)Lrx/a;

    .line 157
    iget-object v3, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v3}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 158
    iget-object v3, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v5, "sent [ACK:%s] to %s."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 50110
    iget-wide v8, v2, Lcom/snowballfinance/message/io/b;->a:J

    .line 158
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x1

    .line 50111
    iget-object v7, p1, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 158
    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 50112
    :cond_2
    iget-object v2, p1, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 161
    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Lcom/snowballfinance/message/io/c/d;->a(I)Z

    .line 162
    iget-object v2, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v2}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 163
    iget-object v2, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v3, "channel[%s] status changes to [OP_PKI]."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 50113
    iget-object v7, p1, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 163
    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 50114
    :cond_3
    iget-object v2, p1, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 166
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/snowballfinance/message/io/c/d;->b(I)Lcom/snowballfinance/message/io/b;

    move-result-object v2

    .line 50115
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/snowballfinance/message/io/b;->f:Z

    .line 50117
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/snowballfinance/message/io/b;->e:Z

    .line 169
    invoke-static {v4, v1, v0}, Lcom/snowballfinance/message/a/a;->a([BLjava/security/Key;I)[B

    move-result-object v0

    .line 50119
    iput-object v0, v2, Lcom/snowballfinance/message/io/b;->g:[B

    .line 50121
    iget-object v0, p1, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 170
    invoke-virtual {v0, v2}, Lcom/snowballfinance/message/io/c/d;->a(Lcom/snowballfinance/message/io/b;)Lrx/a;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v1}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 172
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v3, "sent [SKI:%s, ACK:%s] to %s."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 50122
    iget-wide v6, v2, Lcom/snowballfinance/message/io/b;->a:J

    .line 173
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 50123
    iget-boolean v2, v2, Lcom/snowballfinance/message/io/b;->c:Z

    .line 173
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x2

    .line 50124
    iget-object v5, p1, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 173
    aput-object v5, v4, v2

    .line 172
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 176
    :cond_4
    new-instance v1, Lcom/snowballfinance/message/io/c/a$3;

    invoke-direct {v1, p0, p1}, Lcom/snowballfinance/message/io/c/a$3;-><init>(Lcom/snowballfinance/message/io/c/a;Lcom/snowballfinance/message/io/c/c;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v1}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 216
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "key specification"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50125
    iget-object v3, p2, Lcom/snowballfinance/message/io/b;->g:[B

    .line 216
    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    :cond_5
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v2, "the specification of the public key is inappropriate to produce a public key."

    invoke-virtual {v1, v2, v0}, Lcom/snowballfinance/message/io/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lcom/snowballfinance/message/io/c/f;)V
    .locals 12

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 38
    .line 1035
    iget-object v0, p1, Lcom/snowballfinance/message/io/c/f;->b:Lcom/snowballfinance/message/io/b;

    .line 1064
    iget v0, v0, Lcom/snowballfinance/message/io/b;->b:I

    .line 38
    packed-switch v0, :pswitch_data_0

    .line 17256
    :cond_0
    :goto_0
    return-void

    .line 2026
    :pswitch_0
    iget-object v0, p1, Lcom/snowballfinance/message/io/c/f;->a:Lcom/snowballfinance/message/io/c/c;

    .line 2092
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 40
    invoke-virtual {v0}, Lcom/snowballfinance/message/io/c/d;->c()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-lez v0, :cond_0

    .line 3026
    iget-object v0, p1, Lcom/snowballfinance/message/io/c/f;->a:Lcom/snowballfinance/message/io/c/c;

    .line 3035
    iget-object v2, p1, Lcom/snowballfinance/message/io/c/f;->b:Lcom/snowballfinance/message/io/b;

    .line 3309
    iget-object v3, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v3}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3310
    iget-object v3, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v4, "receive [HRB:%s, ACK:%s] from %s."

    new-array v5, v8, [Ljava/lang/Object;

    .line 4055
    iget-wide v6, v2, Lcom/snowballfinance/message/io/b;->a:J

    .line 3311
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    .line 4073
    iget-boolean v6, v2, Lcom/snowballfinance/message/io/b;->c:Z

    .line 3311
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v10

    .line 4092
    iget-object v6, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 3311
    aput-object v6, v5, v11

    .line 3310
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 5073
    :cond_1
    iget-boolean v3, v2, Lcom/snowballfinance/message/io/b;->c:Z

    .line 3313
    if-eqz v3, :cond_2

    .line 5092
    iget-object v3, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 3314
    invoke-static {v2}, Lcom/snowballfinance/message/io/c/d;->b(Lcom/snowballfinance/message/io/b;)Lcom/snowballfinance/message/io/b;

    move-result-object v2

    .line 6092
    iget-object v3, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 3315
    invoke-virtual {v3, v2}, Lcom/snowballfinance/message/io/c/d;->a(Lcom/snowballfinance/message/io/b;)Lrx/a;

    .line 3316
    iget-object v3, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v3}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3317
    iget-object v3, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v4, "sent [ACK:%s] to %s."

    new-array v5, v11, [Ljava/lang/Object;

    .line 7055
    iget-wide v6, v2, Lcom/snowballfinance/message/io/b;->a:J

    .line 3317
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    .line 7092
    iget-object v1, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 3317
    aput-object v1, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 8092
    :cond_2
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 3320
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/c/d;->a(I)Z

    goto :goto_0

    .line 9026
    :pswitch_1
    iget-object v2, p1, Lcom/snowballfinance/message/io/c/f;->a:Lcom/snowballfinance/message/io/c/c;

    .line 9035
    iget-object v0, p1, Lcom/snowballfinance/message/io/c/f;->b:Lcom/snowballfinance/message/io/b;

    .line 9324
    iget-object v3, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v3}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9325
    iget-object v3, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v4, "receive [ACK:%s] from %s."

    new-array v5, v11, [Ljava/lang/Object;

    .line 10055
    iget-wide v6, v0, Lcom/snowballfinance/message/io/b;->a:J

    .line 9325
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    .line 10092
    iget-object v1, v2, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 9325
    aput-object v1, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 11092
    :cond_3
    iget-object v1, v2, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 9327
    const/16 v3, 0x400

    invoke-virtual {v1, v3}, Lcom/snowballfinance/message/io/c/d;->a(I)Z

    .line 12055
    iget-wide v4, v0, Lcom/snowballfinance/message/io/b;->a:J

    .line 12092
    iget-object v0, v2, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 9329
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/d;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13092
    iget-object v0, v2, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 9330
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/d;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/i/a;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i/a;->a(Ljava/lang/Object;)V

    .line 14092
    iget-object v0, v2, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 9331
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/d;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/i/a;

    invoke-virtual {v0}, Lrx/i/a;->a()V

    goto/16 :goto_0

    .line 15026
    :pswitch_2
    iget-object v0, p1, Lcom/snowballfinance/message/io/c/f;->a:Lcom/snowballfinance/message/io/c/c;

    .line 15035
    iget-object v1, p1, Lcom/snowballfinance/message/io/c/f;->b:Lcom/snowballfinance/message/io/b;

    .line 50
    invoke-virtual {p0, v0, v1}, Lcom/snowballfinance/message/io/c/a;->b(Lcom/snowballfinance/message/io/c/c;Lcom/snowballfinance/message/io/b;)V

    goto/16 :goto_0

    .line 16026
    :pswitch_3
    iget-object v0, p1, Lcom/snowballfinance/message/io/c/f;->a:Lcom/snowballfinance/message/io/c/c;

    .line 16035
    iget-object v1, p1, Lcom/snowballfinance/message/io/c/f;->b:Lcom/snowballfinance/message/io/b;

    .line 54
    invoke-virtual {p0, v0, v1}, Lcom/snowballfinance/message/io/c/a;->a(Lcom/snowballfinance/message/io/c/c;Lcom/snowballfinance/message/io/b;)V

    goto/16 :goto_0

    .line 17026
    :pswitch_4
    iget-object v5, p1, Lcom/snowballfinance/message/io/c/f;->a:Lcom/snowballfinance/message/io/c/c;

    .line 17035
    iget-object v6, p1, Lcom/snowballfinance/message/io/c/f;->b:Lcom/snowballfinance/message/io/b;

    .line 17224
    :try_start_0
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v0}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17225
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v2, "receive [SKI:%s, ACK:%s] from %s."

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 18055
    iget-wide v8, v6, Lcom/snowballfinance/message/io/b;->a:J

    .line 17226
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v4

    const/4 v4, 0x1

    .line 18073
    iget-boolean v7, v6, Lcom/snowballfinance/message/io/b;->c:Z

    .line 17226
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v3, v4

    const/4 v4, 0x2

    .line 18092
    iget-object v7, v5, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 17226
    aput-object v7, v3, v4

    .line 17225
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 18106
    :cond_4
    iget-object v0, v6, Lcom/snowballfinance/message/io/b;->g:[B

    .line 19098
    iget-boolean v2, v6, Lcom/snowballfinance/message/io/b;->f:Z

    .line 17229
    if-eqz v2, :cond_7

    .line 20079
    iget-object v2, v5, Lcom/snowballfinance/message/io/c/c;->c:Ljava/security/Key;

    .line 20083
    iget v3, v5, Lcom/snowballfinance/message/io/c/c;->e:I

    .line 21020
    const-string v4, "RSA/ECB/PKCS1Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 21021
    const/4 v4, 0x2

    invoke-virtual {v7, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 21022
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 21023
    div-int/lit8 v2, v3, 0x8

    move v3, v1

    move v4, v1

    .line 21025
    :goto_1
    array-length v1, v0

    sub-int/2addr v1, v4

    if-lez v1, :cond_6

    .line 21026
    array-length v1, v0

    sub-int/2addr v1, v4

    .line 21027
    if-le v1, v2, :cond_5

    move v1, v2

    :cond_5
    invoke-virtual {v7, v0, v4, v1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v1

    .line 21028
    const/4 v4, 0x0

    array-length v9, v1

    invoke-virtual {v8, v1, v4, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 21025
    add-int/lit8 v1, v3, 0x1

    mul-int v3, v1, v2

    move v4, v3

    move v3, v1

    goto :goto_1

    .line 21030
    :cond_6
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 21090
    :cond_7
    iget-boolean v1, v6, Lcom/snowballfinance/message/io/b;->e:Z

    .line 17232
    if-eqz v1, :cond_8

    .line 17233
    invoke-static {v0}, Lcom/snowballfinance/message/io/b/d;->a([B)[B

    move-result-object v0

    .line 17235
    :cond_8
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    .line 21092
    iget-object v2, v5, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 17236
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v3}, Lcom/snowballfinance/message/io/c/d;->b(Ljava/lang/String;)Lcom/snowballfinance/message/io/c/d;

    .line 17237
    const/16 v2, 0x20

    new-array v2, v2, [B

    .line 17238
    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22056
    iput-object v2, v5, Lcom/snowballfinance/message/io/c/c;->f:[B

    .line 22073
    iget-boolean v0, v6, Lcom/snowballfinance/message/io/b;->c:Z

    .line 17240
    if-eqz v0, :cond_9

    .line 22092
    iget-object v0, v5, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 17241
    invoke-static {v6}, Lcom/snowballfinance/message/io/c/d;->b(Lcom/snowballfinance/message/io/b;)Lcom/snowballfinance/message/io/b;

    move-result-object v0

    .line 23092
    iget-object v1, v5, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 17242
    invoke-virtual {v1, v0}, Lcom/snowballfinance/message/io/c/d;->a(Lcom/snowballfinance/message/io/b;)Lrx/a;

    .line 17243
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v1}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 17244
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v2, "sent [ACK:%s] to %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 24055
    iget-wide v8, v0, Lcom/snowballfinance/message/io/b;->a:J

    .line 17244
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    .line 24092
    iget-object v4, v5, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 17244
    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 25092
    :cond_9
    iget-object v0, v5, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 17247
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/c/d;->a(I)Z

    .line 17248
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v0}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17249
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v1, "channel[%s] valid ops mark as [OP_SKI]."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 26092
    iget-object v4, v5, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 17249
    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 17251
    :catch_0
    move-exception v0

    .line 17252
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v1}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 17253
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payload"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26106
    iget-object v3, v6, Lcom/snowballfinance/message/io/b;->g:[B

    .line 17253
    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17255
    :cond_a
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v1, "particular padding mechanism is expected for the payload but not padded properly."

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/logger/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 27026
    :pswitch_5
    iget-object v0, p1, Lcom/snowballfinance/message/io/c/f;->a:Lcom/snowballfinance/message/io/c/c;

    .line 27092
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 62
    invoke-virtual {v0}, Lcom/snowballfinance/message/io/c/d;->c()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-lez v0, :cond_0

    .line 28026
    iget-object v0, p1, Lcom/snowballfinance/message/io/c/f;->a:Lcom/snowballfinance/message/io/c/c;

    .line 28035
    iget-object v2, p1, Lcom/snowballfinance/message/io/c/f;->b:Lcom/snowballfinance/message/io/b;

    .line 28260
    iget-object v3, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v3}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 28261
    iget-object v3, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v4, "receive [REV:%s, ACK:%s] from %s."

    new-array v5, v8, [Ljava/lang/Object;

    .line 29055
    iget-wide v6, v2, Lcom/snowballfinance/message/io/b;->a:J

    .line 28262
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    .line 29073
    iget-boolean v6, v2, Lcom/snowballfinance/message/io/b;->c:Z

    .line 28262
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v10

    .line 29092
    iget-object v6, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 28262
    aput-object v6, v5, v11

    .line 28261
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 30073
    :cond_b
    iget-boolean v3, v2, Lcom/snowballfinance/message/io/b;->c:Z

    .line 28264
    if-eqz v3, :cond_c

    .line 30092
    iget-object v3, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 28265
    invoke-static {v2}, Lcom/snowballfinance/message/io/c/d;->b(Lcom/snowballfinance/message/io/b;)Lcom/snowballfinance/message/io/b;

    move-result-object v2

    .line 31092
    iget-object v3, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 28266
    invoke-virtual {v3, v2}, Lcom/snowballfinance/message/io/c/d;->a(Lcom/snowballfinance/message/io/b;)Lrx/a;

    .line 28267
    iget-object v3, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v3}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 28268
    iget-object v3, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v4, "sent [ACK:%s] to %s."

    new-array v5, v11, [Ljava/lang/Object;

    .line 32055
    iget-wide v6, v2, Lcom/snowballfinance/message/io/b;->a:J

    .line 28268
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    .line 32092
    iget-object v2, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 28268
    aput-object v2, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 33092
    :cond_c
    iget-object v2, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 28271
    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/snowballfinance/message/io/c/d;->a(I)Z

    .line 34092
    iget-object v2, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 35073
    iget-object v2, v2, Lcom/snowballfinance/message/io/c/d;->h:Lrx/i/a;

    .line 28272
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/i/a;->a(Ljava/lang/Object;)V

    .line 35092
    iget-object v2, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 36073
    iget-object v2, v2, Lcom/snowballfinance/message/io/c/d;->h:Lrx/i/a;

    .line 28273
    invoke-virtual {v2}, Lrx/i/a;->a()V

    .line 28274
    iget-object v2, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v2}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28275
    iget-object v2, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v3, "channel[%s] valid ops mark as [OP_REV]."

    new-array v4, v10, [Ljava/lang/Object;

    .line 36092
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 28275
    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 37026
    :pswitch_6
    iget-object v0, p1, Lcom/snowballfinance/message/io/c/f;->a:Lcom/snowballfinance/message/io/c/c;

    .line 37035
    iget-object v2, p1, Lcom/snowballfinance/message/io/c/f;->b:Lcom/snowballfinance/message/io/b;

    .line 37079
    iget-object v3, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v3}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 37080
    iget-object v3, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v4, "receive [SYN:%s, ACK:%s] from %s."

    new-array v5, v8, [Ljava/lang/Object;

    .line 38055
    iget-wide v6, v2, Lcom/snowballfinance/message/io/b;->a:J

    .line 37080
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    .line 38073
    iget-boolean v6, v2, Lcom/snowballfinance/message/io/b;->c:Z

    .line 37081
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v10

    .line 38092
    iget-object v6, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 37082
    aput-object v6, v5, v11

    .line 37080
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 39073
    :cond_d
    iget-boolean v3, v2, Lcom/snowballfinance/message/io/b;->c:Z

    .line 37084
    if-eqz v3, :cond_e

    .line 39092
    iget-object v3, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 37085
    invoke-static {v2}, Lcom/snowballfinance/message/io/c/d;->b(Lcom/snowballfinance/message/io/b;)Lcom/snowballfinance/message/io/b;

    move-result-object v2

    .line 40092
    iget-object v3, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 37086
    invoke-virtual {v3, v2}, Lcom/snowballfinance/message/io/c/d;->a(Lcom/snowballfinance/message/io/b;)Lrx/a;

    .line 37087
    iget-object v3, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v3}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 37088
    iget-object v3, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v4, "sent [ACK:%s] to %s."

    new-array v5, v11, [Ljava/lang/Object;

    .line 41055
    iget-wide v6, v2, Lcom/snowballfinance/message/io/b;->a:J

    .line 37088
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    .line 41092
    iget-object v2, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 37088
    aput-object v2, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 42092
    :cond_e
    iget-object v2, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 37092
    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Lcom/snowballfinance/message/io/c/d;->a(I)Z

    .line 37093
    iget-object v2, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v2}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 37094
    iget-object v2, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v3, "channel[%s] valid ops mark as [OP_SYN]."

    new-array v4, v10, [Ljava/lang/Object;

    .line 43092
    iget-object v5, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 37094
    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 44092
    :cond_f
    iget-object v2, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 37096
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/snowballfinance/message/io/c/d;->b(I)Lcom/snowballfinance/message/io/b;

    move-result-object v2

    .line 45070
    iget-object v3, v0, Lcom/snowballfinance/message/io/c/c;->d:Ljava/security/Key;

    .line 37097
    invoke-interface {v3}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    .line 37098
    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [B

    .line 45083
    iget v5, v0, Lcom/snowballfinance/message/io/c/c;->e:I

    .line 37099
    div-int/lit16 v5, v5, 0x400

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 37100
    array-length v5, v3

    invoke-static {v3, v1, v4, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45092
    iget-object v3, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 45110
    iput-object v4, v2, Lcom/snowballfinance/message/io/b;->g:[B

    .line 37101
    invoke-virtual {v3, v2}, Lcom/snowballfinance/message/io/c/d;->a(Lcom/snowballfinance/message/io/b;)Lrx/a;

    move-result-object v3

    .line 37102
    iget-object v4, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v4}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 37103
    iget-object v4, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v5, "sent [PKI:%s, ACK:%s] to %s."

    new-array v6, v8, [Ljava/lang/Object;

    .line 46055
    iget-wide v8, v2, Lcom/snowballfinance/message/io/b;->a:J

    .line 37104
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v1

    .line 46073
    iget-boolean v1, v2, Lcom/snowballfinance/message/io/b;->c:Z

    .line 37104
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, v10

    .line 46092
    iget-object v1, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 37104
    aput-object v1, v6, v11

    .line 37103
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 37106
    :cond_10
    new-instance v1, Lcom/snowballfinance/message/io/c/a$1;

    invoke-direct {v1, p0, v0}, Lcom/snowballfinance/message/io/c/a$1;-><init>(Lcom/snowballfinance/message/io/c/a;Lcom/snowballfinance/message/io/c/c;)V

    invoke-virtual {v3, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v1

    .line 47092
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 37118
    invoke-virtual {v0}, Lcom/snowballfinance/message/io/c/d;->a()Lrx/a;

    move-result-object v0

    new-instance v2, Lcom/snowballfinance/message/io/c/a$2;

    invoke-direct {v2, p0, v1}, Lcom/snowballfinance/message/io/c/a$2;-><init>(Lcom/snowballfinance/message/io/c/a;Lrx/j;)V

    invoke-virtual {v0, v2}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    goto/16 :goto_0

    .line 48026
    :pswitch_7
    iget-object v0, p1, Lcom/snowballfinance/message/io/c/f;->a:Lcom/snowballfinance/message/io/c/c;

    .line 48035
    iget-object v2, p1, Lcom/snowballfinance/message/io/c/f;->b:Lcom/snowballfinance/message/io/b;

    .line 48336
    iget-object v3, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v3}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 48337
    iget-object v3, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v4, "receive [FIN:%s] from %s."

    new-array v5, v11, [Ljava/lang/Object;

    .line 49055
    iget-wide v6, v2, Lcom/snowballfinance/message/io/b;->a:J

    .line 48337
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    .line 49092
    iget-object v2, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 48337
    aput-object v2, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 50092
    :cond_11
    iget-object v2, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 48339
    invoke-virtual {v2, v9}, Lcom/snowballfinance/message/io/c/d;->a(I)Z

    .line 48340
    iget-object v2, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v2}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 48341
    iget-object v2, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v3, "channel[%s] valid ops mark as [OP_FIN]."

    new-array v4, v10, [Ljava/lang/Object;

    .line 50093
    iget-object v5, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 48341
    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 50094
    :cond_12
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 48343
    invoke-virtual {v0}, Lcom/snowballfinance/message/io/c/d;->d()V

    goto/16 :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method protected b(Lcom/snowballfinance/message/io/c/c;Lcom/snowballfinance/message/io/b;)V
    .locals 8

    .prologue
    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v0}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v1, "receive [UDM:%s, ACK:%s] from %s."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 50126
    iget-wide v4, p2, Lcom/snowballfinance/message/io/b;->a:J

    .line 283
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 50127
    iget-boolean v4, p2, Lcom/snowballfinance/message/io/b;->c:Z

    .line 283
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 50128
    iget-object v4, p1, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 283
    aput-object v4, v2, v3

    .line 282
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 50129
    :cond_0
    iget-object v0, p2, Lcom/snowballfinance/message/io/b;->g:[B

    .line 50130
    iget-boolean v1, p2, Lcom/snowballfinance/message/io/b;->f:Z

    .line 286
    if-eqz v1, :cond_1

    .line 50131
    iget-object v1, p1, Lcom/snowballfinance/message/io/c/c;->f:[B

    .line 287
    invoke-static {v0, v1}, Lcom/snowballfinance/message/a/c;->a([B[B)[B

    move-result-object v0

    .line 50132
    :cond_1
    iget-boolean v1, p2, Lcom/snowballfinance/message/io/b;->e:Z

    .line 289
    if-eqz v1, :cond_2

    .line 290
    invoke-static {v0}, Lcom/snowballfinance/message/io/b/d;->a([B)[B

    .line 50133
    :cond_2
    iget-boolean v0, p2, Lcom/snowballfinance/message/io/b;->c:Z

    .line 292
    if-eqz v0, :cond_3

    .line 50134
    iget-object v0, p1, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 293
    invoke-static {p2}, Lcom/snowballfinance/message/io/c/d;->b(Lcom/snowballfinance/message/io/b;)Lcom/snowballfinance/message/io/b;

    move-result-object v0

    .line 50135
    iget-object v1, p1, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 294
    invoke-virtual {v1, v0}, Lcom/snowballfinance/message/io/c/d;->a(Lcom/snowballfinance/message/io/b;)Lrx/a;

    .line 295
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v1}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 296
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v2, "sent [ACK:%s] to %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 50136
    iget-wide v6, v0, Lcom/snowballfinance/message/io/b;->a:J

    .line 296
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    .line 50137
    iget-object v4, p1, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 296
    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 50138
    :cond_3
    iget-object v0, p1, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 299
    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/c/d;->a(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v1}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 302
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payload"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50139
    iget-object v3, p2, Lcom/snowballfinance/message/io/b;->g:[B

    .line 302
    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 304
    :cond_4
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v1, "particular padding mechanism is expected for the payload but not padded properly."

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/logger/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method
