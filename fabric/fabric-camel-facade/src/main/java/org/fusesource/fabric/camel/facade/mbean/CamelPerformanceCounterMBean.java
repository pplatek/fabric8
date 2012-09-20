/*
 * Copyright 2010 Red Hat, Inc.
 *
 *  Red Hat licenses this file to you under the Apache License, version
 *  2.0 (the "License"); you may not use this file except in compliance
 *  with the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
 *  implied.  See the License for the specific language governing
 *  permissions and limitations under the License.
 */

package org.fusesource.fabric.camel.facade.mbean;

/**
 *
 */
public interface CamelPerformanceCounterMBean {

    String getId();

    void reset();

    long getExchangesTotal();

    long getExchangesCompleted();

    long getExchangesFailed();

    long getMinProcessingTime();

    long getMeanProcessingTime();

    long getMaxProcessingTime();

    long getTotalProcessingTime();

    long getLastProcessingTime();

    java.util.Date getLastExchangeCompletedTimestamp();

    java.util.Date getFirstExchangeCompletedTimestamp();

    java.util.Date getLastExchangeFailureTimestamp();

    java.util.Date getFirstExchangeFailureTimestamp();

    boolean isStatisticsEnabled();

    void setStatisticsEnabled(boolean statisticsEnabled);

}
